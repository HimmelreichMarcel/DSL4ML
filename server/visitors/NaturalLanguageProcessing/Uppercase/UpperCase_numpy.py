from visitors.NaturalLanguageProcessing.NaturalLanguageVisitor import NaturalLanguageVisitor
from Utility import Utility as util
from numpy import string_


class UpperCase(NaturalLanguageVisitor):
    """ Uppercase all the data in the feature using numpy"""
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            featureset.set_featureset_column(self._column,
                                             string_.upper(featureset.get_column_values(self._column)))
        except Exception as error:
            util.print_error("Unable to add value to array")
            util.print_error(error)
