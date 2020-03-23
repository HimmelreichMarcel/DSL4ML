from visitors.NaturalLanguageProcessing.NaturalLanguageVisitor import NaturalLanguageVisitor
from Utility import Utility as util
import numpy as np
from nltk.stem.wordnet import WordNetLemmatizer
lemmatizer = WordNetLemmatizer()


class Lemmatizer(NaturalLanguageVisitor):
    """ lemmatize all the data in the Feature
    Requires Data to be able to lemmatize"""
    def __init__(self, column):
        import nltk
        nltk.download('wordnet')
        self._column = column

    def visit(self, featureset):
        try:
            _result = []
            _new_result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(lemmatizer.lemmatize(x) for x in word)
                    _result.append(_preprocessed)
                else:
                    _preprocessed = [lemmatizer.lemmatize(text)]
                    _result.append(_preprocessed)
                _new_result = np.asarray(list(_result))[:, np.newaxis]
                _new_result = _new_result.reshape(featureset.get_column_values(self._column).shape)
            featureset.set_featureset_column(self._column, _new_result)
        except Exception as error:
            util.print_error("Unable to tokenize column")
            util.print_error(error)