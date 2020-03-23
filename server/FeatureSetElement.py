import abc
import pandas
from Utility import Utility as util


class FeatureElement(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def accept(self, visitor):
        pass


class FeatureSet(FeatureElement):
    def __init__(self):
        ''' Pandas Dataframe'''
        self._data = pandas.DataFrame()
        self._set_index = None

    def accept(self, visitor):
        return visitor.visit(self)

    def __str__(self):
        return self.__class__.__name__

    def get_featureset(self, truth=False):
        if self._data is None:
            return 0
        elif truth:
            return self._truth
        else:
            return self._data

    def get_featureset_values(self, truth=False):
        if self._data is None:
            return 0
        elif truth:
            return self._truth.values
        else:
            return self._data.values

    def get_set_index(self):
        return self._set_index

    def get_column(self, column, truth=False):
        if self._data is None:
            return 0
        elif truth:
            return self._truth[column]
        else:
            return self._data[column]

    def get_column_values(self, column, truth=False):
        if self._data is None:
            return 0
        elif truth:
            return self._truth[column].values
        else:
            return self._data[column].values

    def set_featureset(self, featureset, truth=False):
        try:
            if truth:
                self._truth = featureset
            else:
                self._data = featureset
        except Exception as error:
            print("Unable to set featureset")
            print(error)

    def set_index(self, index):
        self._set_index = index

    def set_featureset_column(self, column, data, truth=False):
        try:
            if truth:
                self._truth[column] = data
            else:
                self._data[column] = data
        except Exception as error:
            util.print_error("Unable to set column in featureset")
            util.print_detailed_error()
