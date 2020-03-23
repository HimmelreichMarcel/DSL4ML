# -*- coding: utf-8 -*-
"""
@author: Marcel
"""
import nltk
nltk.download('punkt')
from nltk.stem.wordnet import WordNetLemmatizer
from nltk.stem import LancasterStemmer
from nltk.util import ngrams
from Utility import Utility as util
import string
import re
from nltk import word_tokenize

from visitors.Visitor import Visitor as v
import numpy as np

lemmatizer = WordNetLemmatizer()
porter = LancasterStemmer()



class NaturalLanguageVisitor(v):
    def visit(self, featureset):
        pass


class JoinOperation(NaturalLanguageVisitor):
    """ Join a value to every item in feature """
    def __init__(self, column=None, value=""):
        self._column = column
        self._value = value

    def visit(self, featureset):
        try:
            featureset.set_featureset_column(self._column,
                                                 np.char.join(self._value, featureset.get_column_values(self._column)))
        except Exception as error:
            util.print_error("Unable to add value to array")
            util.print_error(error)


class LowerCase(NaturalLanguageVisitor):
    """ Lowercase all the data in the feature """
    def __init__(self, column=None):
        self._column = column

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(word.lower())
                    _result.append(_preprocessed)
                else:
                    _result.append(text.lower())
            featureset.set_featureset_column(self._column, _result)
        except Exception as error:
            util.print_error("Unable to add value to array")
            util.print_error(error)


class UpperCase(NaturalLanguageVisitor):
    """ Uppercase all the data in the feature """
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
                        _preprocessed.append(word_tokenize(word))
                    _result.append(_preprocessed)
                else:
                    _preprocessed = word_tokenize(text)
                    _result.append(_preprocessed)
            _new_result = np.asarray(list(_result))[:, np.newaxis]
            _new_result = _new_result.reshape(featureset.get_column_values(self._column).shape)
            featureset.set_featureset_column(self._column, _new_result)
        except Exception as error:
            util.print_error("Unable to tokenize column")
            util.print_error(error)


# Returns Array with lemmatized strings
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


# Returns Array with stemmed text
class Stemmer(NaturalLanguageVisitor):
    """ Stem all the data in the Feature
    Requires Data to be able to stem"""
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(porter.stem(x) for x in word)
                    _result.append(_preprocessed)
                else:
                    _preprocessed = [porter.stem(text)]
                    _result.append(_preprocessed)
            _new_result = np.asarray(list(_result))[:, np.newaxis]
            _new_result = _new_result.reshape(featureset.get_column_values(self._column).shape)
            featureset.set_featureset_column(self._column, _new_result)
        except Exception as error:
            util.print_error("Unable to tokenize column")
            util.print_error(error)


# Returns Array with removed Punctuations from text
class RemovePunctuation(NaturalLanguageVisitor):
    """ Remove all the Punctations of the data in a feature"""
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                table = str.maketrans("", "", string.punctuation)
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(str(word).translate(table))
                else:
                    _preprocessed = str(text).translate(table)
                _result.append(_preprocessed)
            _new_result = np.asarray(list(_result))[:, np.newaxis]
            _new_result = _new_result.reshape(featureset.get_column_values(self._column).shape)
            featureset.set_featureset_column(self._column, _new_result)
        except Exception as error:
            util.print_error("Unable to tokenize column")
            util.print_error(error)


# Returns Array with removed character from text
class RemoveChar(NaturalLanguageVisitor):
    """ Remove a specific character from every data in the feature"""
    def __init__(self, column, char):
        self._column = column
        self._char = char

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(self.remove(word))
                else:
                    _preprocessed = self.remove(text)
                _result.append(_preprocessed)
            _new_result = np.asarray(list(_result))[:, np.newaxis]
            _new_result = _new_result.reshape(featureset.get_column_values(self._column).shape)
            featureset.set_featureset_column(self._column, _new_result)
        except Exception as error:
            util.print_error("Unable to tokenize column")
            util.print_error(error)

    def remove(self, string):
        return re.sub('[' + re.escape(''.join(self._char)) + ']', '', string)


class StartWithNumber(NaturalLanguageVisitor):
    """ Creates a new Feature
    Binary feature if the data starts with a number"""
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(1 if word[0].isdigit() else 0)
                else:
                    _preprocessed = 1 if text[0].isdigit() else 0
                _result.append(_preprocessed)
            featureset.set_featureset_column(self._column, np.asarray(list(_result))[:, np.newaxis])
        except Exception as error:
            util.print_error("Unable to create binary column")
            util.print_error(error)


# Returns longest words number of given Data
class LongestWord(NaturalLanguageVisitor):
    """ Returns List with longest Words Count"""
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(max([len(x) for x in word]))
                else:
                    _preprocessed = max([len(x) for x in text])
                _result.append(_preprocessed)
            featureset.set_featureset_column(self._column, np.asarray(list(_result))[:, np.newaxis])
        except Exception as error:
            util.print_error("Unable to create binary column")
            util.print_error(error)


# Returns mean words number of given Data
class MeanWord(NaturalLanguageVisitor):
    """ Returns List with mean Words Count"""
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(len(x) for x in word)
                else:
                    _preprocessed = [len(x) for x in text]
                _preprocessed = sum(_preprocessed) / len(_preprocessed)
                _result.append(_preprocessed)
            featureset.set_featureset_column(self._column, np.asarray(list(_result))[:, np.newaxis])
        except Exception as error:
            util.print_error("Unable to create binary column")
            util.print_error(error)


# Returns binary Array (1 = Media attached | 0 = No)
class TextToBinary(NaturalLanguageVisitor):
    """ Creates a new Feature
    Binary Feature for if there is data in the row or not"""
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(1 if word else 0)
                else:
                    _preprocessed = 1 if text else 0
                _result.append(_preprocessed)
            featureset.set_featureset_column(self._column, np.asarray(list(_result))[:, np.newaxis])
        except Exception as error:
            util.print_error("Unable to create binary column")
            util.print_error(error)


# Returns Array with character sum
class CharacterSum(NaturalLanguageVisitor):
    """ Creates a new feature
    Calculates the sum of every text in a row in a feature"""
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(sum(len(x) for x in word))
                else:
                    _preprocessed = sum(len(x) for x in text)
                _result.append(_preprocessed)
            featureset.set_featureset_column(self._column, np.asarray(list(_result))[:, np.newaxis])
        except Exception as error:
            util.print_error("Unable to create character sum of text")
            util.print_error(error)


class NGram(NaturalLanguageVisitor):
    def __init__(self, column, n_gram_value):
        self._column = column
        self._n_gram_value = n_gram_value

    def visit(self, featureset):
        try:
            _result = []
            for text in featureset.get_column_values(self._column):
                if isinstance(text, list):
                    _preprocessed = []
                    for word in text:
                        _preprocessed.append(self.n_gram(word))
                    _result.append(_preprocessed)
                else:
                    _preprocessed = self.n_gram(text)
                    print(_preprocessed)
                    _result.append(_preprocessed)
            featureset.set_featureset_column(self._column, _result)
        except Exception as error:
            util.print_error("Unable to Create Word NGrams")
            util.print_error(error)

    def n_gram(self, text):
        return list(ngrams(text, self._n_gram_value))


class CountSyllable(NaturalLanguageVisitor):
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            featureset_df = featureset.get_featureset()
            if self.checkGroup(featureset_df, self._column):
                target_column = self.expand(featureset_df, self._column, True)
                _result = target_column.apply(self.countSyl())
                featureset.set_featureset_column(self._column, list(_result.values))
            else:
                print(featureset_df.dtypes)
                _result = featureset_df[self._column].apply(self.countSyl())
                featureset.set_featureset_column(self._column, _result)
        except Exception as error:
            util.print_error("Unable to Count Syllables")
            util.print_error(error)

    def countSyl(self, word):
        from nltk.corpus import cmudict
        d = cmudict.dict()
        return [len(list(y for y in x if y[-1].isdigit())) for x in d[word.lower()]]
