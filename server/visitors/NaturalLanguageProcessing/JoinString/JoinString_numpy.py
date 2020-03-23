from visitors.NaturalLanguageProcessing.NaturalLanguageVisitor import NaturalLanguageVisitor
from Utility import Utility as util
from numpy import char

class JoinOperation(NaturalLanguageVisitor):
    """ Join a value to every item in feature """
    def __init__(self, column=None, value=None):
        self._column = column
        self._value = value

    def visit(self, featureset):
        try:
            featureset.set_featureset_column(self._column,
                                             char.join(self._value, featureset.get_column_values(self._column)))
        except Exception as error:
            util.print_error("Unable to add value to array")
            util.print_error(error)