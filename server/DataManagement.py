from Model import Model

from Decorator.FeatureComponent import FeatureSetComponent
from Decorator.DataDecorator import *
from Decorator.NaturalLanguageDecorator import *
from Decorator.PreprocessDecorator import *
from Decorator.ExpressionDecorator import *
from Decorator.ModelDecorator import *
from visitors.PrintVisitor import *
from visitors.ModelVisitor import *
from visitors.FeatureSetVisitor import *
from visitors.PreprocessVisitor import *

from Utility import Utility as Util


# ToDO Allgemein Fehler Catchen und an MPS schicken fuer den Nutzer
class DataManagement:
    """ Holds the Featureset and Models
        Evaluates Commands from the Client given by the Server """

    def __init__(self, server):
        self._server = server
        self._feature_set = []
        self._model = []

    def command_evaluation(self, command):
        temp_command = command
        if len(command) < 2:
            return 0
        try:
            first_command = command.pop(0)

            # =================== Create Statement =====================================================================

            if first_command == "create":
                second_command = command.pop(0)

                if second_command == "featureset":
                    featureset_id = command.pop(0)
                    self.create_featureset(featureset_id)
                    if len(command) > 0:
                        featureset_path = command.pop(0)
                        if featureset_path:
                            component = LoadDecorator(
                                self._feature_set[self.get_featureset_index(featureset_id)], featureset_path)
                            component.operation()

                elif second_command == "model":
                    model_id = command.pop(0)
                    self.create_model(model_id)

            # =================== Statements Regarding Featureset-Object ===============================================

            elif first_command == "featureset":
                target_featureset_id = command.pop(0)
                second_command = command.pop(0)

                if second_command == "add":
                    # add <col> fromFeat <fs_id> [useXXX]
                    target_column_name = command.pop(0)
                    command.pop(0)  # delete 'fromFeatureset' from command
                    source_featureset_id = command.pop(0)

                    return self.edit_data(add=True,
                                          featureset_id=target_featureset_id,
                                          target_column=target_column_name,
                                          from_featureset_id=source_featureset_id,
                                          command=command)

                elif second_command == "condense":
                    column = command.pop(0)
                    if column[0] is "[":
                        column = eval(column)
                    sequential = command.pop(0)
                    mode = command.pop(0)
                    index = command.pop(0)
                    component = CondenseDecorator(self._feature_set[self.get_featureset_index(target_featureset_id)],
                                                  column, sequential, mode, index)
                    component.operation()

                elif second_command == "deleteInstances":
                    condition = " ".join(command)
                    visitor_obj = DropRowByCondition(condition)
                    self._feature_set[self.get_featureset_index(target_featureset_id)].accept(visitor_obj)

                elif second_command == "editInstances":
                    column = command.pop(0)

                    # get condition and expression by regex
                    matches = re.findall("#\[(.+?)\]#", " ".join(command))
                    condition = ""
                    if len(matches) == 2:
                        condition = matches.pop(0)
                        print(condition)
                    expression = matches.pop(0)
                    print(expression)
                    featureset_container = self._feature_set[self.get_featureset_index(target_featureset_id)]
                    component = EditInstancesDecorator(featureset_container, column, condition, expression)
                    return component.operation()

                elif second_command == "expand":
                    column = command.pop(0)
                    visitor_obj = Expand(column)
                    featureset = self._feature_set[self.get_featureset_index(target_featureset_id)].get_featureset()
                    featureset.accept(visitor_obj)

                elif second_command == "get":
                    third_command = command.pop(0)
                    visitor_obj = None
                    if third_command == "head":
                        visitor_obj = PrintHead()
                    elif third_command == "dataType":
                        visitor_obj = PrintDataType()
                    elif third_command == "meta":
                        visitor_obj = PrintNaN()
                    elif third_command == "info":
                        visitor_obj = PrintInfo()
                    elif third_command == "size":
                        fifth_command = command.pop(0)
                        visitor_obj = PrintSize(fifth_command)
                    elif third_command == "index":
                        visitor_obj = Index()
                    elif third_command == "truth":
                        visitor_obj = Truth()
                    return visitor_obj.visit(self._feature_set[self.get_featureset_index(target_featureset_id)])

                elif second_command == "group":
                    name = command.pop(0)
                    columns = []
                    for column in command:
                        columns.append(column)
                    visitor_obj = Group(name=name, columns=columns)
                    featureset = self._feature_set[self.get_featureset_index(target_featureset_id)].get_featureset()
                    featureset.accept(visitor_obj)

                elif second_command == "interpolate":
                    method = command.pop(0)
                    visitor_obj = Interpolate(method)
                    self._feature_set[self.get_featureset_index(target_featureset_id)].accept(visitor_obj)

                elif second_command == "joinWith":
                    with_featureset_id = command.pop(0)
                    join = JoinFrame(self._feature_set[self.get_featureset_index(with_featureset_id)].get_featureset())
                    self._feature_set[self.get_featureset_index(target_featureset_id)].accept(join)

                elif second_command == "mask":
                    condition = command.pop(0)
                    column = command.pop(0)
                    visitor_obj = Mask(condition, column)
                    self._feature_set[self.get_featureset_index(target_featureset_id)].accept(visitor_obj)

                elif second_command == "remove":
                    columns = [x for x in command]
                    component = self._feature_set[self.get_featureset_index(target_featureset_id)]
                    component = RemoveFeatureDecorator(component, columns)
                    component.operation()

                elif second_command == "replace":
                    target_column = command.pop(0)
                    if target_column == "fromFeatureset":
                        """ Replace Featureset """
                        from_featureset_id = command.pop(0)
                        self.replace_featureset(from_featureset_id, target_featureset_id)
                        return 0
                    if not command:
                        command = None
                    return self.edit_data(add=False,
                                          featureset_id=target_featureset_id,
                                          target_column=target_column,
                                          from_featureset_id=target_featureset_id,
                                          from_featureset_column=target_column,
                                          command=command)

                elif second_command == "setStore":
                    store = command.pop(0)
                    self._feature_set[self.get_featureset_index(target_featureset_id)].set_store(store)

                elif second_command == "setIndex":
                    third_command = command.pop(0)
                    from_featureset = False
                    if third_command == "fromFeatureset":
                        featureset_value = command.pop(0)
                        featureset_value = self._feature_set[self.get_featureset_index(featureset_value)].get_featureset()
                        from_featureset = True
                    else:
                        featureset_value = third_command
                    component = self._feature_set[self.get_featureset_index(target_featureset_id)]
                    component = SetIndexDecorator(component, featureset_value, from_featureset)
                    component.operation()

                elif second_command == "setTruth":
                    truth_column = command.pop(0)
                    self._feature_set[self.get_featureset_index(target_featureset_id)].set_truth_column(truth_column)

                elif second_command == "sort":
                    mode = command.pop(0)
                    column = None
                    if len(command) > 0:
                        column = command.pop(0)
                    visitor_obj = Sort(mode, column)
                    self._feature_set[self.get_featureset_index(target_featureset_id)].accept(visitor_obj)

                elif second_command == "split":
                    # get featureset
                    featureset = self._feature_set[self.get_featureset_index(target_featureset_id)]

                    # get truth and index to set them inside new featuresets
                    truth = featureset.get_truth_column()
                    index = featureset.get_index()

                    # get split parameters from command-list
                    mode = command.pop(0)
                    id_split = {}
                    while len(command) > 1:
                        new_id = command.pop(0)
                        new_split_value = float(command.pop(0))
                        id_split[new_id] = new_split_value

                    # perform split
                    visitor_obj = Split(id_split, mode)
                    featuresets = visitor_obj.visit(featureset.get_featureset())
                    for key, value in featuresets.items():
                        self.create_featureset(key, featureset=value, truth=truth, index=index)

                elif second_command == "store":
                    # get featureset
                    component = self._feature_set[self.get_featureset_index(target_featureset_id)].get_featureset()
                    component.get_featureset().to_csv(command[0], sep=";")

            # =================== Statements Regarding Model-Object ====================================================

            elif first_command == "model":
                model_id = command.pop(0)
                second_command = command.pop(0)
                if second_command == "addTrainData":
                    ''' Delete 'fromFeatureset' from command'''
                    ''' model <id> addTrainData fromFeatureset <featuresetID>'''
                    command.pop(0)
                    from_featureset_id = command.pop(0)
                    component = AddDataDecorator(self._model[self.get_model_index(model_id)],
                                                 self._feature_set[self.get_featureset_index(from_featureset_id)])
                    component.operation()
                elif second_command == "addTestData":
                    ''' Delete 'fromFeatureset' from command'''
                    ''' model <id> addTestData fromFeatureset <featuresetID>'''
                    command.pop(0)
                    from_featureset_id = command.pop(0)
                    component = AddDataDecorator(self._model[self.get_model_index(model_id)],
                                                 self._feature_set[self.get_featureset_index(from_featureset_id)],
                                                 test=True)
                    component.operation()

                elif second_command == "setEstimator":
                    estimator = command.pop(0)
                    parameter = command
                    visitor_obj = SetEstimator(estimator, parameter)
                    visitor_obj.visit(self._model[self.get_model_index(model_id)])

                elif second_command == "findEstimator":
                    estimator = command.pop(0)
                    drop = command.pop(0)
                    plot = command.pop(0)
                    plot_best = 3
                    if len(command) > 1:
                        plot_best = command.pop(0)
                    component = FindEstimatorDecorator(model=self._model[self.get_model_index(model_id)],
                                                       estimator=estimator,
                                                       plot=plot,
                                                       drop=drop,
                                                       plot_best=plot_best)
                    return component.operation()

                elif second_command == "crossValidate":
                    estimator = command.pop(0)
                    kfold = command.pop(0)
                    component = CrossValidationDecorator(self._model[self.get_model_index(model_id)], estimator, kfold)
                    return component.operation()

                elif second_command == "setSplit":
                    split = command.pop(0)
                    if len(command) > 0:
                        split_value = command.pop(0)
                        self._model[self.get_model_index(model_id)].set_split_data(split)
                        self._model[self.get_model_index(model_id)].set_split_value(split_value)
                    else:
                        self._model[self.get_model_index(model_id)].set_split_data(split)

                elif second_command == "setSplitValue":
                    split_value = command.pop(0)
                    self._model[self.get_model_index(model_id)].set_split_value(split_value)

                elif second_command == "setStore":
                    store = command.pop(0)
                    self._model[self.get_model_index(model_id)].set_store(store)

                elif second_command == "fit":
                    visitor_obj = Fit()
                    visitor_obj.visit(self._model[self.get_model_index(model_id)])

            elif first_command == "end":
                ''' Delete featuresets '''
                self.check_featureset()
            else:
                command_error = [
                    "Command reached end of Commandparser" + "\n",
                    "Full Command: " + str(temp_command)]
                return command_error
        except Exception as error:
            Util.print_error("Error: Unable to compute requested task: " + str(error))
            Util.print_detailed_error()
            return error

    def get_feature_value(self, id, column):
        """ Return a feature from a specific featureset with a given column name"""
        feature_set_index = self.get_featureset_index(id)
        feature = self._feature_set[feature_set_index].get_featureset().get_column(column)
        return feature

    def create_featureset(self, id, featureset=None, truth="", index=""):
        """ Create a new empty Featureset with a specific id
        Overwrites Featureset with the same ID by deleting the current featureset"""
        if self.check_featureset_id(id):
            print(".. overwriting featureset")
            self._feature_set.pop(self.get_featureset_index(id))
            if featureset is not None:
                self._feature_set[self.get_featureset_index(id)] = FeatureSetComponent(id=id, featureset=featureset,
                                                                                       truth_column=truth, index=index)
            else:
                self._feature_set[self.get_featureset_index(id)] = FeatureSetComponent(id=id, truth_column=truth,
                                                                                       index=index)
        else:
            print(".. creating new featureset")
            if featureset is not None:
                component = FeatureSetComponent(id=id, featureset=featureset, truth_column=truth, index=index)
            else:
                component = FeatureSetComponent(id=id, truth_column=truth, index=index)
            self._feature_set.append(component)

    def create_model(self, id):
        """ Create a new empty Model with a specific id """
        if self.check_model_id(id):
            self._model[self.get_model_index(id)] = Model(id)
        else:
            self._model.append(Model(id))

    def check_featureset(self):
        """ Check for every Featureset to delete at the end of a command chain """
        for featureset in self._feature_set:
            if not featureset.get_return():
                self._feature_set.remove(featureset)
        for model in self._model:
            if not model.get_store():
                self._model.remove(model)

    def remove_featureset(self, id):
        """ Remove Featureset from Database"""
        if self.check_featureset_id(id):
            self._feature_set.pop(self.get_featureset_index(id))

    def replace_featureset(self, from_id, target_id):
        """ Replace target id from id"""
        if self.check_featureset_id(from_id) and self.check_featureset_id(target_id):
            self._feature_set[self.get_featureset_index(target_id)] = self._feature_set[self.get_featureset_index(target_id)]
            self.remove_featureset(from_id)

    def check_featureset_id(self, id):
        for featureset in self._feature_set:
            print(str(featureset.get_id()) + " == " + str(id))
            if featureset.get_id() is id:
                return True
        return False

    def check_model_id(self, id):
        for model in self._model:
            if model.get_id() == id:
                return True
        return False

    def add_feature_by_column(self, from_id, to_id, column):
        print(from_id, to_id, column)
        """ Add a Feature from the selected Featureset to a new Featureset with given id and column name """
        feature = self.get_feature_value(from_id, column)
        # TODO: keyError on column (line above)
        # first featureset loaded (instances)
        # features copied to second featureset
        # first featureset reloaded (truth)
        # features copied to second -> ERROR
        component = AddFeatureDecorator(self._feature_set[self.get_featureset_index(to_id)], column, feature)
        component.operation()

    def add_feature_by_value(self, column, feature, old_featureset):
        """ Add Feature to a new column into the selected Featureset
        The Feature is already given """
        component = AddFeatureDecorator(self._feature_set[self.get_featureset_index(old_featureset)], column, feature)
        component.operation()

    def remove_feature(self, featureset, column):
        """ Remove a single feature from the selected Featureset"""
        component = RemoveFeatureDecorator(self._feature_set[self.get_featureset_index(featureset)], column)
        component.operation()

    def add_train_data(self, model, featureset, column, test=False):
        """ Add Train Data from the Featureset id to a Model"""
        if test:
            if column is None:
                add_train = SetXTest(
                    x=self._feature_set[self.get_featureset_index(featureset)].get_featureset().get_featureset_values())
            else:
                add_train = SetXTest(
                    x=self._feature_set[self.get_featureset_index(featureset)].get_featureset().get_column_values(
                        column))
        else:
            if column is None:
                add_train = SetXTrain(
                    x=self._feature_set[self.get_featureset_index(featureset)].get_featureset().get_featureset_values())
            else:
                add_train = SetXTrain(
                    x=self._feature_set[self.get_featureset_index(featureset)].get_featureset().get_column_values(
                        column))
        add_train.visit(self._model[self.get_model_index(model)])

    def add_truth_data(self, model, featureset, column, test=False):
        """ Add Truth data from the Featureset id to a Model"""
        if test:
            if column is None:
                add_truth = SetYTest(
                    y=self._feature_set[self.get_featureset_index(featureset)].get_featureset().get_featureset_values())
            else:
                add_truth = SetYTest(
                    y=self._feature_set[self.get_featureset_index(featureset)].get_featureset().get_column_values(
                        column))
        else:
            if column is None:
                add_truth = SetYTrain(
                    y=self._feature_set[self.get_featureset_index(featureset)].get_featureset().get_featureset_values())
            else:
                add_truth = SetYTrain(
                    y=self._feature_set[self.get_featureset_index(featureset)].get_featureset().get_column_values(
                        column))
        add_truth.visit(self._model[self.get_model_index(model)])

    def get_featureset_index(self, fid):
        """ Returns the index for a featureset id in the storage"""
        for i, item in enumerate(self._feature_set):
            if item.get_id() == fid:
                return i
        return 0

    def get_model_index(self, model_id):
        """ Returns the index for a model id in the storage"""
        for i, item in enumerate(self._model):
            if item.get_id()[0] == model_id:
                return i
        return 0

    def set_featureset_index(self, featureset, column, target_featureset):
        featureset_index = self.get_featureset_index(featureset)
        index = SetIndex(self._feature_set[featureset_index].get_featureset().get_column_values(column))
        index.visit(self._feature_set[self.get_featureset_index(target_featureset)])

    def set_model_parameter(self, command):
        """ Set the Parameter of a Model
        Not Complete Yet
        Set Estimator Parameter is missing
        third_command = command.pop(0)
        if third_command == "splitdata":
            self._model[self._selected_model].set_split_data(command)
        elif third_command == "splitvalue":
            self._model[self._selected_model].set_split_data(command)
        if third_command == "id":
            self._model[self._selected_model].set_id(command)"""

    def edit_data(self, add=True, featureset_id=None, target_column=None, from_featureset_id=None,
                  from_featureset_column=None, command=None):
        third_command = command.pop(0)

        if third_command == "useNLP":
            return self.nlp_data(
                add=add,
                target_id=featureset_id,
                target_column=target_column,
                from_id=from_featureset_id,
                command=command)

        elif third_command == "usePreprocessing":
            return self.preprocess_data(
                add, featureset_id, target_column, from_featureset_id, from_featureset_column, command)

        elif third_command == "useExpression":
            expr = ''.join(command)
            return self.function_evaluation(
                featureset_id, target_column, featureset_id, expr)

        elif third_command == "useCopy":
            from_featureset_column = command.pop(0)
            feature = self.get_feature_value(from_featureset_id, from_featureset_column)

            component = AddFeatureDecorator(
                self._feature_set[self.get_featureset_index(featureset_id)], target_column, feature)

            return component.operation()
        else:
            Util.print_error("SHOULD NEVER END HERE")

    def function_evaluation(self, target_id=None, target_column=None, from_id=None, expr=None):
        """ Evaluates a function on a given Featureset and add the result as a new
        Feature into a Featureset"""
        print(".. evaluate expression: " + expr)
        from_fs_id = self.get_featureset_index(from_id)
        to_fs_id = self.get_featureset_index(target_id)
        component = FunctionDecorator(self._feature_set[from_fs_id],
                                      self._feature_set[to_fs_id], target_column, expr)
        component.operation()

    # =================== Featureset Preprocessing Statements ==========================================================

    def preprocess_data(self, add=True, target_id=None, target_column=None, from_id=None, from_column=None,
                        command=None):

        if add:
            feature = self.get_feature_value(from_id, from_column)
            component = AddFeatureDecorator(self._feature_set[self.get_featureset_index(target_id)], target_column,
                                            feature)
        else:
            component = self._feature_set[self.get_featureset_index(target_id)]

        first_command = command.pop(0)

        if first_command == "labelEncode":
            component = LabelEncoderDecorator(component, target_column)

        elif first_command == "labelBinarize":
            component = LabelBinarizeDecorator(component, target_column)

        elif first_command == "normalize":
            component = NormalizerDecorator(component, target_column)

        elif first_command == "standardize":
            group = None
            if len(command) > 0:
                group = command.pop(0)
            component = StandardizationDecorator(component, target_column, group)

        elif first_command == "imputer":
            if len(command) > 0:
                strategy = command.pop(0)
                component = ImputerDecorator(component, target_column, strategy)
            else:
                component = ImputerDecorator(component, target_column)

        elif first_command == "oneHot":
            component = OneHotEncoderDecorator(component, target_column)

        elif first_command == "binarize":
            component = BinarizerDecorator(component, target_column)

        elif first_command == "fillEmptyCells":
            column = command.pop(0)
            feature_type = command.pop(0)
            value = command.pop(0)

            component = FillEmptyCellsDecorator(component, column, feature_type, value)

        return component.operation()

    def nlp_data(self, add=True, target_id=None, target_column=None, from_id=None, command=None):
        """ Perform natural language processing on a feature from a featureset"""
        first_command = command.pop(0)

        # TODO: Is this still required? Does not work with current "useNLP"
        '''
        if add and first_command != "extract":
            # Add feature 
            feature = self.get_feature_value(from_id, from_column)
            component = AddFeatureDecorator(self._feature_set[self.get_featureset_index(target_id)], target_column,
                                            feature)
        else:
            # Perform on column
            component = self._feature_set[self.get_featureset_index(target_id)]
        
        if first_command == "lowerCase":
            component = LowercaseDecorator(component, target_column)
        elif first_command == "upperCase":
            component = UppercaseDecorator(component, target_column)
        elif first_command == "lemmatize":
            component = LemmatizerDecorator(component, target_column)
        '''
        component = self._feature_set[self.get_featureset_index(from_id)]
        if first_command == "join":
            value = ""
            if len(command) > 0:
                value = command.pop(0)
            component = JoinDecorator(component, target_column, value)
            component.operation()
        '''
        elif first_command == "removeChar":
            value = ""
            if len(command) > 0:
                value = command.pop(0)
            component = RemoveCharacterDecorator(component, target_column, value)
        elif first_command == "removePunct":
            component = RemovePunctuationDecorator(component, target_column)
        elif first_command == "tokenize":
            component = TokenizerDecorator(component, target_column)
        elif first_command == "stem":
            component = StemmerDecorator(component, target_column)
        elif first_command == "nGram":
            n_gram_value = 3
            if len(command) > 0:
                n_gram_value = command.pop(0)
            component = NGramDecorator(component, target_column, n_gram_value)
        component.operation()
        '''

        if first_command == "extract":
            from_column = command.pop(0)
            extraction_target = command.pop(0)
            extraction_type = command.pop(0)
            measure = None
            ngram = None

            # get measure
            if extraction_type == "bow" or extraction_type == "ngram":
                measure = command.pop(0)

            # get ngram parameters
            if len(command) > 1:
                ngram = (int(command.pop(0)), int(command.pop(0)))
            elif len(command) == 1:
                value = command.pop(0)
                ngram = [int(value), int(value)]

            component = self._feature_set[self.get_featureset_index(from_id)]
            target_featureset = None
            if add:
                target_featureset = self._feature_set[self.get_featureset_index(target_id)]
            component = LanguageProcessorDecorator(featureset=component, target_featureset=target_featureset,
                                                   column=from_column, extraction_target=extraction_target,
                                                   extraction_type=extraction_type,  measure=measure, new_column=target_column,
                                                   ngram=ngram)
            component.operation()

    def run_task(self, tasks):
        # Run Task for Section Output
        for task in tasks:
            task.runTask()
        self.check_featureset()
