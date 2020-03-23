from Decorator.Component import Component
from FeatureSetElement import FeatureSet


class FeatureSetComponent(Component):
    def __init__(self, id=None, name=None, featureset=None, truth_column=[], index=""):
        self._id = id
        self._name = name
        ''' Featureset class'''
        self._featureset = FeatureSet()
        if featureset is not None:
            self._featureset.set_featureset(featureset)
        ''' truth is string to search in Dataframe'''
        self._truth = None
        self._truth_shadow = None
        self._truth_column = truth_column
        self._index = index
        self._processing_history = []
        self._store = False

    def operation(self):
        pass

    def accept(self, visitor):
        return visitor.visit(self._featureset)

    def get_featureset(self):
        if self._featureset is None:
            return 0
        return self._featureset

    def set_featureset(self, featureset):
        try:
            self._featureset = featureset
        except Exception as error:
            print("Unable to set feature")
            print(error)

    def get_id(self):
        return self._id

    def get_truth(self):
        return self._truth

    def get_truth_column(self):
        return self._truth_column

    def get_index(self):
        return self._index

    def set_index(self, index):
        self._index = index

    def set_truth(self, column):
        self._truth = column

    def set_truth_column(self, column):
        self._truth_column = column

    def set_id(self, id):
        self._id = id

    def set_store(self, bool):
        self._store = bool

    def add_history(self, history):
        self._processing_history.append(history)
