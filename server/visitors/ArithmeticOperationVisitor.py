# -*- coding: utf-8 -*-
"""

@author: Marcel
"""
from nltk.stem.wordnet import WordNetLemmatizer
from nltk.stem import PorterStemmer

from Utility import Utility as util
from sklearn import preprocessing as p

from visitors.Visitor import Visitor as v

lemmatizer = WordNetLemmatizer()
porter = PorterStemmer()


class ArithmeticOperationVisitor(v):
    def visit(self, data):
        pass


class FunctionOperation(ArithmeticOperationVisitor):
    """ Initialize the Visitor with a given Evaluation string"""
    def __init__(self, eval_string):
        self._eval_string = eval_string

    def evaluate(self, featureset):
        return eval(self._eval_string)

    def visit(self, featureset):
        try:
            return featureset.get_featureset().apply(self.evaluate, axis=1)
        except Exception as error:
            util.print_error("Unable to apply function to column:")
            util.print_error(error)

    # TODO: probably should not be inside function operation visitor?
    def encode(self, feature, single_column=True):
        if single_column:
            encoder = p.LabelEncoder()
        else:
            encoder = p.LabelBinarizer()
        util.print_warning("trying to encode stringfeature")
        result = encoder.fit_transform(feature)
        return result
