from visitors.NaturalLanguageProcessing.NaturalLanguageVisitor import NaturalLanguageVisitor
from Utility import Utility as util
import numpy as np
import tokenize


class Tokenizer(NaturalLanguageVisitor):
    """ Tokenize all the Data in the feature
    Requires Data to be able to tokenize"""
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(tokenize(word))
                    _result.append(_preprocessed)
                else:
                    _preprocessed = tokenize(text)
                    _result.append(_preprocessed)
            _new_result = np.asarray(list(_result))[:, np.newaxis]
            _new_result = _new_result.reshape(featureset.get_column_values(self._column).shape)
            featureset.set_featureset_column(self._column, _new_result)
        except Exception as error:
            util.print_error("Unable to tokenize column")
            util.print_error(error)