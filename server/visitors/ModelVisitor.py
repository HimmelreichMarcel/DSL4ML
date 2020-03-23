# -*- coding: utf-8 -*-
"""
Created on Mon Aug 21 14:01:51 2017

@author: Marcel
"""

from sklearn.model_selection import train_test_split
from sklearn.externals import joblib
from visitors.Visitor import Visitor
from time import time
from Utility import Utility as util
import numpy as np
from sklearn.model_selection import cross_validate
import scikitplot as skplt
import matplotlib.pyplot as plt
#Classification
from sklearn.metrics import f1_score
from sklearn.metrics import accuracy_score
from sklearn.metrics import precision_score
from sklearn.metrics import recall_score

from sklearn.neighbors import KNeighborsClassifier
from sklearn.svm import SVC, LinearSVC
from sklearn.gaussian_process import GaussianProcessClassifier
from sklearn.gaussian_process.kernels import RBF
from sklearn.tree import DecisionTreeClassifier
from sklearn.ensemble import RandomForestClassifier, AdaBoostClassifier
from sklearn.naive_bayes import GaussianNB
from sklearn.discriminant_analysis import QuadraticDiscriminantAnalysis
from sklearn.neural_network import MLPClassifier
#Regression
from sklearn.metrics import r2_score

from sklearn.ensemble import RandomForestRegressor
from sklearn.svm import SVR
from sklearn.neighbors import KNeighborsRegressor
from sklearn.linear_model import LogisticRegression
from sklearn.linear_model import Ridge
from sklearn.linear_model import Lasso
from sklearn.linear_model import ElasticNet
from sklearn.linear_model import SGDClassifier, SGDRegressor
from sklearn.naive_bayes import MultinomialNB
#Unsupervised Clustering Not Implemented Yet
import os
import sys


class Fit(Visitor):
    def __init__(self, plot="lc"):
        self._plot = plot

    """ Train the Model with the set Train and Truth Data """
    def visit(self, model):
        try:
            if model.get_split_data():
                x_train = model.get_x_train()
                y_train = model.get_y_train()
                x_test = model.get_x_test()
                y_test = model.get_y_test()
            else:
                x_train, x_test, y_train, y_test = train_test_split(model.get_x_train(), model.get_y_train(),
                                                                    test_size=0.33, random_state=42)
            # Train Model with X and Y
            _start = time()
            if isinstance(model.get_estimator(), list):
                model.set_model_trained(model.get_estimator()[0].fit(x_train, y_train))
            else:
                model.set_model_trained(model.get_estimator().fit(x_train, y_train))
            _seconds = ("ComputationTimeInSeconds" + " " + str(_start - time()))
            model.set_computation_time(_seconds)
            # Print Score
            if model.get_estimator_type() == "classification":
                y_predicted = model.get_model_trained().predict(x_test)
                model.accept(F1Score(y_test, y_predicted))
            elif model.get_estimator_type() == "regression":
                y_predicted = model.get_model_trained().predict(x_test)
                model.accept(R2Score(y_test, y_predicted))

                """
                if self._plot == "lc":
                    print()
                elif self._plot == "confusion":
                    y_pred = model.get_model_trained().predict(x_test)
                    skplt.metrics.plot_confusion_matrix(y_test, y_pred, normalize=True)
                elif self._plot == "roc":
                    y_probas = model.get_model_trained().predict_proba(x_test)
                    skplt.metrics.plot_roc(y_test, y_probas)
                elif self._plot == "pcall":
                    y_probas = model.get_model_trained().predict_proba(x_test)
                    skplt.metrics.plot_precision_recall(y_test, y_probas)
                _fig = plt.gcf()
                return self.SaveFigToDic(_fig, self._plot)
                """
        except Exception as error:
            util.print_error("Error: Unable to compute requested task.")

            exc_type, exc_obj, exc_tb = sys.exc_info()
            filename = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]

            util.print_error("Error of type " + str(exc_type) + " occurred at " + filename + " line "
                             + str(exc_tb.tb_lineno) + ":")
            util.print_error(error)

    def SaveFigToDic(self, fig, filename):
        _filename = str(filename) + "_LC" + ".png"
        _path = os.path.dirname(os.path.dirname(os.path.dirname(__file__))) + "\\Data\\Results\\"
        fig.savefig(_path + _filename)
        plt.show()
        plt.close()
        response = []
        response.append("FileName" + "\t" + _filename)
        response.append("Path" + "\t" + str(_path))
        return response


class SetXTrain(Visitor):
    """ Set the Train Data for the Model """
    def __init__(self, x):
        self._x = x

    def visit(self, model):
        try:
            model.set_x_train(self._x)
        except Exception as error:
            util.print_error("Unable to Set X To Model")
            util.print_error(error)


class SetYTrain(Visitor):
    """ Set the Truth Value for the Model """
    def __init__(self, y):
        self._y = y

    def visit(self, model):
        try:
            model.set_y_train(self._y)
        except Exception as error:
            util.print_error("Unable to Set Y To Model")
            util.print_error(error)


class SetXTest(Visitor):
    """ Set the Train Data for the Model """
    def __init__(self, x):
        self._x = x

    def visit(self, model):
        try:
            print(self._x)
            model.set_x_test(self._x)
        except Exception as error:
            util.print_error("Unable to Set X To Model")
            util.print_error(error)


class SetYTest(Visitor):
    """ Set the Truth Value for the Model """
    def __init__(self, y):
        self._y = y

    def visit(self, model):
        try:
            print(self._y)
            model.set_y_test(self._y)
        except Exception as error:
            util.print_error("Unable to Set Y To Model")
            util.print_error(error)


class F1Score(Visitor):
    def __init__(self, true, predict, average="weighted"):
        self._true = true
        self._predict = predict
        self._average = average

    def visit(self, model):
        try:
            result = model.get_metric()
            result['F1Score'] = f1_score(self._true, self._predict, average=self._average)
            model.set_metric(result)
        except Exception as error:
            util.print_error("Unable to set estimator of Model")
            util.print_error(error)


class R2Score(Visitor):
    def __init__(self, true, predict):
        self._true = true
        self._predict = predict

    def visit(self, model):
        try:
            result = model.get_metric()
            result['R2Score'] = r2_score(self._true, self._predict)
            model.set_metric(result)
        except Exception as error:
            util.print_error("Unable to set estimator of Model")
            util.print_error(error)


class AccuracyScore(Visitor):
    def __init__(self, true, predict):
        self._true = true
        self._predict = predict

    def visit(self, model):
        try:
            result = model.get_metric()
            result['AccScore'] = accuracy_score(self._true, self._predict)
            model.set_metric(result)
        except Exception as error:
            util.print_error("Unable to set estimator of Model")
            util.print_error(error)


class RecallScore(Visitor):
    def __init__(self, true, predict, average=None):
        self._true = true
        self._predict = predict
        self._average = average

    def visit(self, model):
        try:
            result = model.get_metric()
            result['RecallScore'] = recall_score(self._true, self._predict, average=self._average)
            model.set_metric(result)
        except Exception as error:
            util.print_error("Unable to set estimator of Model")
            util.print_error(error)


class PrecisionScore(Visitor):
    def __init__(self, true, predict, average=None):
        self._true = true
        self._predict = predict
        self._average = average

    def visit(self, model):
        try:
            result = model.get_metric()
            result['PrecScore'] = precision_score(self._true, self._predict, average=self._average)
            model.set_metric(result)
        except Exception as error:
            util.print_error("Unable to set estimator of Model")
            util.print_error(error)


class CrossValidation(Visitor):
    def __init__(self, estimator, kfold):
        self._estimator = estimator
        self._kfold = int(kfold)

    def visit(self, model):
        try:
            X = model.get_x_train()
            Y = model.get_y_train()
            cv_result = cross_validate(self._estimator, X, Y, cv=self._kfold)
            return cv_result #cv_result['test_score']
        except Exception as error:
            util.print_error("Unable to calculate cross validation")
            util.print_error(error)


class SetEstimator(Visitor):
    """ Set the Estimator for Model """
    def __init__(self, estimator, parameter=None, return_value=False):
        self._estimator = estimator
        self._parameter = parameter
        self._learning_type = None
        self._return_value = return_value

    def visit(self, model):
        try:
            if self._return_value:
                return self.get_estimator(self._estimator)
            else:
                model.set_estimator(self.get_estimator(self._estimator))
                model.set_estimator_type(self._learning_type)
        except Exception as error:
            util.print_error("Unable to set estimator of Model")
            util.print_error(error)

    def get_estimator(self, estimator):
        """Classification"""
        if estimator == "random_forest":
            self._learning_type = "classification"
            return RandomForestClassifier(verbose=True)
        elif estimator == "svc":
            self._learning_type = "classification"
            return SVC(verbose=True)
        elif estimator == "linear_svc":
            self._learning_type = "classification"
            return LinearSVC(verbose=True)
        elif estimator == "sgd_classify":
            self._learning_type = "classification"
            return SGDClassifier(verbose=True)
        elif estimator == "k_neighbor_classifier":
            self._learning_type = "classification"
            return KNeighborsClassifier(verbose=True)
        elif estimator == "gaussian_process_classifier":
            self._learning_type = "classification"
            return GaussianProcessClassifier(1.0*RBF(1.0), verbose=True)
        elif estimator == "decision_tree_classifier":
            self._learning_type = "classification"
            return DecisionTreeClassifier(verbose=True)
        elif estimator == "ada_boost_classifier":
            self._learning_type = "classification"
            return AdaBoostClassifier(verbose=True)
        elif estimator == "mlp_classifier":
            self._learning_type = "classification"
            return MLPClassifier(verbose=True)
        elif estimator == "random_forest_classifier":
            self._learning_type = "classification"
            return RandomForestClassifier(verbose=True)
        elif estimator == "quadratic_discriminant":
            self._learning_type = "classification"
            return QuadraticDiscriminantAnalysis(verbose=True)
        """Regression"""
        if estimator == "random_forest_regression":
            self._learning_type = "regression"
            return RandomForestRegressor(verbose=True)
        elif estimator == "linear_svr":
            self._learning_type = "regression"
            return SVR(kernel='linear')
        elif estimator == "k_neighbor_regression":
            self._learning_type = "regression"
            return KNeighborsRegressor(verbose=True)
        elif estimator == "naives_bayes":
            self._learning_type = "regression"
            return MultinomialNB(verbose=True)
        elif estimator == "svr":
            self._learning_type = "regression"
            return SVR(verbose=True)
        elif estimator == "lasso":
            self._learning_type = "regression"
            return Lasso(verbose=True)
        elif estimator == "elastic_net":
            self._learning_type = "regression"
            return ElasticNet(verbose=True)
        elif estimator == "ridge":
            self._learning_type = "regression"
            return Ridge(alpha=1.0, solver="auto", verbose=True)
        elif estimator == "logistic_regression":
            self._learning_type = "regression"
            return LogisticRegression(verbose=True)
        elif estimator == "sgd_regress":
            self._learning_type = "regression"
            return SGDRegressor(verbose=True)
        """ Find Estimator by returning all estimators"""
        if estimator == "classification":
            self._learning_type = "classification"
            estimators = [SVC(), LinearSVC(), SGDClassifier(), KNeighborsClassifier(),
                          GaussianProcessClassifier(1.0 * RBF(1.0)), DecisionTreeClassifier(),
                          MLPClassifier()]
            return estimators
        elif estimator == "regression":
            self._learning_type = "regression"
            estimators = [RandomForestRegressor(), SVR(kernel='linear'), KNeighborsRegressor(), MultinomialNB(),
                          SVR(), Lasso(), ElasticNet(), Ridge(alpha=1.0, solver="auto"), LogisticRegression(),
                          SGDRegressor()]
            return estimators

"""
# Train Data with Classification
class Classify(ModelVisitor):
    def __init__(self, x, y, model):
        self._x = x
        self._y = y
        self._model = model

    def visit(self, model):
        return self.classify(model)

    # Select Model to train and split Data
    def classify(self, model, evaluate=True):
        if isinstance(self._model, str):
            model.model_trained = model.models[self._model]
        else:
            model.model_trained = self._model

        # Split Data
        if evaluate:
            x_train, x_test, y_train, y_test = train_test_split(self._x, self._y, test_size=0.4, random_state=0)
        else:
            x_train = self._x
            y_train = self._y

        # Train Model with X and Y
        _start = time()
        model.model_trained.fit(x_train, y_train)
        _seconds = "ComputationTimeInSeconds" + " " + str(_start - time())
        model.set_computation_time(_seconds)
        _result = []
        # Print Score
        if model._split_data:
            y_predicted = model.model_trained.predict(x_test)
            for rm in model.regression_measures:
                _result.append(str("{}: {}".format(rm, model.classification_measures[rm](y_test, y_predicted))))
            model.set_metric(_result)
        return _result


# Train Data with Regression
class Regress(ModelVisitor):
    def __init__(self, x, y, model):
        self._x = x
        self._y = y
        self._model = model

    def visit(self, model):
        try:
            if isinstance(self._model, str):
                model.model_trained = model.models[self._model]
            else:
                model.model_trained = self._model

            # Split Data
            if model._split_data:
                x_train, x_test, y_train, y_test = train_test_split(self._x, self._y, test_size=model._split_value, random_state=0)
            else:
                x_train = self._x
                y_train = self._y

            # Train Model with X and Y
            _start = time()
            model.model_trained.fit(x_train, y_train)
            _seconds = ("ComputationTimeInSeconds" + " " + str(_start - time()))
            model.set_computation_time(_seconds)
            _result = []
            # Print Score
            if model._split_data:
                y_predicted = model.model_trained.predict(x_test)
                for rm in model.regression_measures:
                    _result.append(str("{}: {}".format(rm, model.regression_measures[rm](y_test, y_predicted))))
                model.set_metric(_result)
            return _result
        except Exception as error:
            print("Unable to regress Model")
            print(error)

# Save trained Model
class SaveModel(ModelVisitor):
    def __init__(self, path):
        self._path = path

    # Save trained Model in Given Path
    def visit(self, model):
        joblib.dump(model.model_trained, self._path)


# Load trained Model
class LoadModel(ModelVisitor):
    def __init__(self, path):
        self._path = path

    # Load trained Model from given Path
    def visit(self, model):
        model.model_trained = joblib.load(self._path)


class GetTrainedModel(ModelVisitor):
    def visit(self, model):
        return model.model_trained

# TODO is GetEstimator a method of GetTrainedModel (rename to get_estimator) or an own ModelVisitor
def GetEstimator(estimator):
    if estimator == "randomforest":
        return RandomForestClassifier()
    elif estimator == "randomforestregressor":
        return RandomForestRegressor()
    elif estimator == "naivesbayes":
        return MultinomialNB()
    elif estimator == "linearsvr":
        return svm.SVR(kernel='linear')
    elif estimator == "svr":
        return svm.SVR()
    elif estimator == "lasso":
        return Lasso()
    elif estimator == "elasticnet":
        return ElasticNet()
    elif estimator == "ridge":
        return Ridge(alpha=1.0, solver="auto")
    elif estimator == "logisticregression":
        return LogisticRegression()
    elif estimator == "svc":
        return svm.SVC()
    elif estimator == "linearsvc":
        return svm.LinearSVC()
    elif estimator == "sgdclassify":
        return SGDClassifier()
    elif estimator == "sgdregress":
        return SGDRegressor()

class AccScoreVisitor(ModelVisitor):        
    def visit(self,Data, nbool=None, weight=None):
        if nbool & weight:
            return accuracy_score(Data.getYTrain(),Data.getYTest(),
                                  normalize=nbool, sample_weight=weight)
        elif nbool:
            return accuracy_score(Data.getYTrain(),Data.getYTest(),
                                  normalize=nbool)
        elif weight:
            return accuracy_score(Data.getYTrain(),Data.getYTest(),
                                  sample_weight=weight)
        else:
            return accuracy_score(Data.getYTrain(),Data.getYTest())
"""
