from visitors.NaturalLanguageProcessing.NaturalLanguageVisitor import NaturalLanguageVisitor
from Utility import Utility as util


class UpperCase(NaturalLanguageVisitor):
    """ Uppercase all the data in the feature using the python standard library"""
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(word.upper())
                    _result.append(_preprocessed)
                else:
                    _result.append(text.upper())
            featureset.set_featureset_column(self._column, _result)
        except Exception as error:
            util.print_error("Unable to add value to array")
            util.print_error(error)