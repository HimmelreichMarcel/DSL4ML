import re

# do not remove (required for evaluate-method)
import statistics

from Decorator.Decorator import Decorator
from visitors.ArithmeticOperationVisitor import FunctionOperation
from Decorator.DataDecorator import AddFeatureDecorator
from visitors.FeatureSetVisitor import MatrixToColumns


from Utility import Utility as util


class FunctionDecorator(Decorator):

    def __init__(self, featureset, target_feature_set, column=None, eval_string=None):
        """ initialize the Decorator with the Featureset to perform a function and a target
        featureset to add the result as new feature"""
        super(FunctionDecorator, self).__init__(featureset)
        self._column = column
        self._target_feature_set = target_feature_set
        self._eval_string = eval_string

    def pre_evaluation(self):
        """ Pre Evaluation is required to perform column wise operations
        Example: calculates the sum of a column """
        matches = re.findall("#\[(.+?)\]#", self._eval_string)
        for match in matches:
            outer = "#[" + match + "]#"
            expr = match.replace('featureset', 'self._component.get_featureset().get_featureset()')
            value = eval(expr)
            self._eval_string = self._eval_string.replace(outer, str(value))

    def encode(self, expr, single_column=True):
        from sklearn import preprocessing
        if single_column:
            print(".. do label encoding (single column)")
            encoder = preprocessing.LabelEncoder()
            data = encoder.fit_transform(expr)
            self._target_feature_set = AddFeatureDecorator(self._target_feature_set, self._column, data)
            self._target_feature_set.operation()
        else:
            print(".. do label binarizing (multi column)")
            encoder = preprocessing.LabelBinarizer()
            data = encoder.fit_transform(expr)
            visitor = MatrixToColumns(data, self._column)
            visitor.visit(self._target_feature_set.get_featureset())
        return ""

    def delete(self, expr):
        #ToDo Testen
        featureset = self._component.get_featureset()
        featureset = featureset.ix[expr]
        self._component.set_featureset(featureset)

    def operation(self):
        """ Evaluate the function on a Featureset with a given pre-evaluation"""
        self.pre_evaluation()
        if self._eval_string is not "":
            visitor = FunctionOperation(self._eval_string)
            feature = visitor.visit(self._component.get_featureset())
            print(feature)
            """ Add the new Feature to a target Featureset"""
            self._target_feature_set = AddFeatureDecorator(self._target_feature_set, self._column, feature)
            self._target_feature_set.operation()

        # history = "Arithmetic Operation: Apply Function on dataset"
        # self._component.add_history(history)



"""Pre evaluation for row operation
    example: "#[x.avg]# - x  * #[b.avg]#"
    #[x.avg]# = row operation value
    insert value -> #[x.avg]# = 5
    "5 - x #[b.avg]#"

    str.replace(old, new)
"""