#!/usr/bin/python3
# -*- coding: utf-8 -*-
"""
Created on Wed Oct 11 23:41:51 2017

@author: Marcel
"""
import abc
import numpy as np
import sklearn.metrics as skm


def normalized_mean_squared_error(truth, predictions):
    norm = skm.mean_squared_error(truth, np.full(len(truth), np.mean(truth)))
    return skm.mean_squared_error(truth, predictions) / norm


class ModelElement(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def accept(self, visitor):
        pass


# Model Class with Regression or Classification
class Model(ModelElement):
    regression_measures = {'ExplainedVariance': skm.explained_variance_score,
                           'MeanAbsoluteError': skm.mean_absolute_error,
                           'MeanSquaredError': skm.mean_squared_error,
                           'MedianAbsoluteError': skm.median_absolute_error,
                           'R2Score': skm.r2_score,
                           'NormalizedMeanSquaredError': normalized_mean_squared_error}

    classification_measures = {#'Accuracy': skm.accuracy_score,
                               #'Precision': skm.precision_score,
                               #'Recall': skm.recall_score,
                               'F1Score': skm.f1_score}

    def __init__(self, id):
        self._id = id
        self._estimator = None
        self._estimator_hyper_parameter = None
        """ classification, regression or clustering as estimator type"""
        self._estimator_type = None
        """ source can be Scikit or Tensorflow"""
        self._estimator_source = None
        self._split_data = False
        self._split_value = 0.3
        self._x_train = None
        self._y_train = None
        self._x_test = None
        self._y_test = None
        self._model_trained = None
        self._computation_time = 0
        self._metrics = {}
        self._store = False

    def accept(self, visitor):
        return visitor.visit(self)

    def operation(self):
        pass

    def get_id(self):
        return self._id

    def get_metric(self):
        return self._metrics

    def get_estimator(self):
        if isinstance(object, (list,)):
            return self._estimator[0]
        else:
            return self._estimator

    def get_estimator_type(self):
        return self._estimator_type

    def get_x_train(self):
        return self._x_train

    def get_y_train(self):
        return self._y_train

    def get_x_test(self):
        return self._x_test

    def get_y_test(self):
        return self._y_test

    def get_split_data(self):
        return self._split_data

    def get_split_value(self):
        return self._split_value

    def get_store(self):
        return self._store

    def get_model_trained(self):
        return self._model_trained

    def set_id(self, id):
        self._id = id

    def set_x_train(self, x):
        self._x_train = x

    def set_y_train(self, y):
        self._y_train = y

    def set_x_test(self, x):
        self._x_test = x

    def set_y_test(self, y):
        self._y_test = y

    def set_estimator(self, estimator):
        self._estimator = estimator

    def set_estimator_type(self, type):
        self._estimator_type = type

    def set_estimator_parameter(self, parameter):
        self._estimator_hyper_parameter = parameter

    def set_split_data(self, bool):
        self._split_data = bool

    def set_split_value(self, value):
        self._split_value = value

    def set_computation_time(self, value):
        self._computation_time = value

    def set_metric(self, metric):
        self._metrics = metric

    def set_store(self, bool):
        self._store = bool

    def set_model_trained(self, model):
        self._model_trained = model


if __name__ == "__main__":
    pass
