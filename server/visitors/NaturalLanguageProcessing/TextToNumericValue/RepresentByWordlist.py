from visitors.NaturalLanguageProcessing.NaturalLanguageVisitor import NaturalLanguageVisitor
from Utility import Utility as util
import numpy as np
import pandas as pd


class RepresentByWordlist(NaturalLanguageVisitor):
    """ Creates a single or multi feature with binary or count values
    Checks the presents of a word in a string or counts the appearance in the string
    Note: Creates automatic multiple features if wordlist is an array """
    def __init__(self, column, wordlist, mode="presence", from_path=False, name=None):
        self._column = column
        self._wordlist = wordlist
        self._mode = mode
        self._name = name
        self._from_path = from_path

    def visit(self, featureset):
        try:
            _result = featureset.get_featureset()
            if self._from_path is True:
                self.loadWordlist()
            if isinstance(self._wordlist, list):
                for word in self._wordlist:
                    if self._mode == "presence":
                        _result[str(word + "_" + self._column + "_presence")] = self.singlePresence(word, featureset.get_featureset())
                    elif self._mode == "count":
                        _result[str(word + "_" + self._column + "_count")] = self.singleCount(word, featureset.get_featureset())
            elif isinstance(self._wordlist, str):
                if self._mode == "presence":
                    _result[str(self._wordlist + "_" + self._column + "_presence")] = self.singlePresence(self._wordlist, featureset.get_featureset())
                elif self._mode == "count":
                    _result[str(self._wordlist + "_" + self._column + "_count")] = self.singleCount(self._wordlist, featureset.get_featureset())
            featureset.set_featureset(_result)
        except Exception as error:
            util.print_error("Unable to create a wordlist vector or matrix")
            util.print_error(error)

    def loadWordlist(self):
        wordlist = list()
        with open(self._wordlist) as f:
            for line in f:
                wordlist.append(line.rstrip('\n'))
        self._wordlist = wordlist

    def singlePresence(self, word, dataframe):
        new_column = []
        for string in dataframe[self._column]:
            if word in string:
                new_column.append(1)
            else:
                new_column.append(0)
        return new_column

    def singleCount(self, word, dataframe):
        new_column = []
        for row_value in dataframe[self._column]:
            count = 0
            if isinstance(row_value, list):
                count = row_value.count(word)
            elif isinstance(row_value, str):
                count = row_value.count(word)
            new_column.append(count)
        return new_column
