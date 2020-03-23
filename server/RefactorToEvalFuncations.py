# -*- coding:
"""
Created on Sat Oct 14 16:57:45 2017
@author: Marcel
"""

from time import time
from sklearn.feature_extraction.text import TfidfVectorizer
import numpy as np
from scipy.sparse import csc_matrix
from scipy.sparse import hstack
from visitors.Visitor import Visitor as v
from math import ceil

from collections import deque
from nltk.stem.wordnet import WordNetLemmatizer
from nltk.tokenize import TweetTokenizer, sent_tokenize
from nltk.corpus import cmudict
from nltk.sentiment.vader import SentimentIntensityAnalyzer

from Utility import Utility as util

lemmatizer = WordNetLemmatizer()
tknzr = TweetTokenizer(strip_handles=True, reduce_len=True)


def tokenize(text):
    """ Tokenize given Text"""
    global tknzr
    return [token for token in tknzr.tokenize(text)]


def preprocess(string):
    """ Lower text, delete punctuation and lemmatize String"""
    global lemmatizer
    string = string.lower()
    if string.endswith("'s"):
        string = string[:-2]
    string = lemmatizer.lemmatize(string)
    return string


class FeatureVisitor(v):
    #def __init__(self, feature=None):
        #self.feature = feature
        #self.name = [type(self).__name__]

    def visit(self, featureset):
        pass

    def as_list(self):
        return self.feature

    def as_sparse(self, data):
        return csc_matrix(self.feature)


# Builds features from given feature methods and data from FeatureSet
class FBuilder(FeatureVisitor):
    """ Build features from given feature methods and data from FeatureSet"""
    # Build Features with all added Features
    def visit(self, featureset):
        _result = None
        start = time()
        for idx, val in enumerate(featureset.features):
            if featureset.select_features[idx]:
                _result = self.push(_result, val)
        featureset.X = _result
        seconds = ("ComputationTimeInSeconds " + str(start - time()))
        response = ["BuildingFeatures", seconds]
        print("Featurebuilder done.")
        print(response)
        return response

    def push(self, result, f):
        if result is None:
            result = f
        else:
            result = hstack((result, f))
        return result


# Add Feature with Data to FeatureSet
class AddFeature(FeatureVisitor):
    """ Add Feature with Data  to Featuerset"""

    def __init__(self, visitor=None, feature=None, name=None):
        # super().__init__(feature)
        self._visitor = visitor
        self._feature = feature
        self._name = name

    def visit(self, featureset):
        if self._visitor:
            """ Add Feature from available Feature Functions"""
            try:
                featureset.features.append(self._visitor.as_sparse(self._feature))
                featureset.select_features.append(True)
                for names in featureset.feature_names:
                    if self._name == names:
                        featureset.feature_names.append(self._name + "_1")
                        return
            except Exception as n:
                util.print_error("Unable to add Feature to Featureset")
                util.print_error(n)
        else:
            """ Add Raw Data to Featureset"""
            try:
                featureset.features.append(self._feature.to_sparse())
                featureset.select_features.append(True)
                for names in featureset.feature_names:
                    if self._name == names:
                        featureset.feature_names.append(self._name + "_1")
                        return
                featureset.feature_names.append(self._name)
            except Exception as n:
                util.print_error("Unable to add raw Feature to Featureset")
                util.print_error(n)


class GetSelectedFeatures(FeatureVisitor):
    def visit(self, featureset):
        def push(result, f):
            if result is None:
                result = f
            else:
                result = hstack((result, f))
            return result

        try:
            features = None
            for idx, val in enumerate(featureset.features):
                if featureset.select_features[idx]:
                    features = push(features, val)
            return features
        except:
            print("Unable to get Selected Features from FeatureSet")


class GetFeatures(FeatureVisitor):
    def __init__(self, features):
        # super().__init__()
        self.features = features

    def visit(self, featureset):
        def push(result, f):
            if result is None:
                result = f
            else:
                result = hstack((result, f))
            return result

        try:
            features = None
            for idx, val in enumerate(featureset.features):
                for name in self.features:
                    if featureset.feature_names[idx] == name:
                        features = push(features, val)
            return features
        except:
            print("Unable to get Selected Features from FeatureSet")


class SelectFeature:
    def __init__(self, name, boolean):
        self.name = name
        self.bool = boolean

    def visit(self, featureset):
        try:
            for idx1, name_feature in enumerate(featureset.feature_names):
                for idx2, name_select in enumerate(self.name):
                    if name_feature == name_select:
                        # TODO: what should be idx1 and what idx2
                        featureset.select_features[idx] = self.bool[idx]

        except:
            print("Error while selecting Features")


class RemoveFeature(FeatureVisitor):
    def __init__(self, name):
        # super().__init__()
        self.name = name

    def visit(self, featureset):
        try:
            for idx, val in enumerate(featureset.feature_names):
                if val == self.name:
                    featureset.select_features.pop(idx)
                    featureset.feature_names.pop(idx)
                    featureset.features.pop(idx)
            return self
        except:
            print("Unable to remove Feature from Featureset")


# Returns Sparse Matrix with N Gram Feature (E.g. 3_word_Gram_Feature)
class NGramFeature(FeatureVisitor):
    """ Create a N-Gram Feature with tokenizer, ngram_range and stopwords"""

    def __init__(self, analyzer='word', n=3, o=1, cutoff=1, fit_data=None, stop_words='english'):
        # super().__init__()
        self._vectorizer = TfidfVectorizer(analyzer=analyzer, min_df=cutoff, ngram_range=(n, o), lowercase=False,
                                           tokenizer=lambda doc: doc, stop_words=stop_words)

        self.name = [str(analyzer) + "_" + str(cutoff) + "_Feature"]
        if fit_data is not None:
            self.fit(fit_data)

    def get_vocab(self):
        return self.vectorizer_fit.vocabulary_

    def fit(self, data):
        self.vectorizer_fit = self._vectorizer.fit(data)
        self.name_full = [None] * len(self.vectorizer_fit.vocabulary_)
        for key, value in self.vectorizer_fit.vocabulary_.items():
            self.name_full[value] = key

    def as_sparse(self, data):
        return csc_matrix(self.vectorizer_fit.transform(data))


# Returns binary Array(1 = Starts with Number | 0 = Starts not with Number)
class StartsWithNumber(FeatureVisitor):
    """ Check Binary if Word starts with number"""

    def as_sparse(self, data):
        _result = []
        for text in data:
            _preprocessed = [preprocess(x) for x in text]
            try:
                _result.append(1 if _preprocessed[0].isdigit() else 0)
            except IndexError:
                _result.append(0)
        return np.asarray(list(_result))[:, np.newaxis]


# Returns longest words number of given Data
class LongestWord(FeatureVisitor):
    """ Returns List with longest Words Count"""

    def as_sparse(self, data):
        _result = []
        for text in data:
            _processed_len = [len(preprocess(x)) for x in text]
            try:
                _result.append(max(_processed_len))
            except ValueError:
                _result.append(0)
        return np.asarray(list(_result))[:, np.newaxis]


# Returns mean words number of given Data
class MeanWord(FeatureVisitor):
    """ Returns List with mean Words Count"""

    def as_sparse(self, data):
        _result = []

        for text in data:
            _processed_len = [len(preprocess(x)) for x in text]
            try:
                _result.append(sum(_processed_len) / len(_processed_len))
            except ZeroDivisionError:
                _result.append(0)
        return np.asarray(list(_result))[:, np.newaxis]


# Returns binary Array (1 = Media attached | 0 = No)
class HasMediaAttached(FeatureVisitor):
    def as_sparse(self, data):
        _result = []
        for text in data:
            _result.append(1 if text else 0)
        return np.asarray(list(_result))[:, np.newaxis]


# Returns Array with character sum
class CharacterSum(FeatureVisitor):
    def as_sparse(self, data):
        _result = []
        for text in data:
            _preprocessed = [preprocess(x) for x in text]
            try:
                _result.append(sum(len(x) for x in _preprocessed))
            except ZeroDivisionError:
                _result.append(0)
        return np.asarray(list(_result))[:, np.newaxis]


# Returns Array with Sentiment Polarity Score (Positive, Neutral, Negative)
class SentimentPolarity(FeatureVisitor):
    def __init__(self):
        # super().__init__()
        self.sid = SentimentIntensityAnalyzer()
        self.name = ["Sentiment Polarity"]

    def as_sparse(self, data):
        _result = []
        for text in data:
            _preprocessed = text
            try:
                _result.append(self.sid.polarity_scores(" ".join(_preprocessed))["compound"])
            except Exception:
                _result.append(0)
        return np.asarray(list(_result))[:, np.newaxis]


# Returns Array with number of specific words in given Data
class ContainsWords(FeatureVisitor):
    def __init__(self, wordlist, only_words=False, ratio=False, binary=False):
        # super().__init__()
        self.wordlist = wordlist
        if isinstance(wordlist, str):
            with open(wordlist, 'r') as inf:
                self.wordlist = [x.strip() for x in inf.readlines()]
        self.only_words = only_words
        self.ratio = ratio
        self.binary = binary
        self.name = [str(wordlist)]

    def as_sparse(self, data):
        _result = deque()
        for text in data:
            _processed = [preprocess(x) for x in text]
            _processed_string = ''.join(_processed)
            _tmp = 0
            for word in self.wordlist:
                if self.only_words:
                    _tmp += _processed.count(word)
                elif not self.only_words:
                    _tmp += _processed_string.count(word)
            try:
                _result.append(_tmp if not self.ratio else _tmp / len(_processed))
            except ZeroDivisionError:
                _result.append(0)
        if self.binary:
            _result = [0 if i == 0 else 1 for i in _result]

        return np.asarray(list(_result))[:, np.newaxis]


class PartOfDay(FeatureVisitor):
    """ Preprocess Date Format and returns List with dates"""

    def as_sparse(self, data):
        _result = []
        for text in data:
            d = text.split(':')[0]
            _result.append(ceil(int(d.split()[3]) / 6))
        return np.asarray(list(_result))[:, np.newaxis]


class FleschKincaidScore(FeatureVisitor):
    """ Calculates FleschkincaidScore"""

    def __init__(self):
        # super().__init__()
        self.prondict = cmudict.dict()
        self.name = ["Flesch-Kincaid Score"]

    def as_sparse(self, data):
        def get_pron(word):
            try:
                return self.prondict[word][0]
            except KeyError:
                return [['1']]

        _result = []
        for text in data:
            _processed = text
            word_count = len(_processed)
            sent_count = len(sent_tokenize(text))
            syllable_count = np.sum([len([s for s in get_pron(word)
                                          if (s[-1]).isdigit()])
                                     for word in _processed])
            try:
                _result.append(0.39 *
                               (word_count / sent_count) + 11.8 *
                               (syllable_count / word_count) - 15.59)
            except ZeroDivisionError:
                _result.append(-3.4)  # thats the minimal possible FK-Score
        return np.asarry(list(_result))[:, np.newaxis]
