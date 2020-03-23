from Decorator.Decorator import Decorator
from visitors.ModelVisitor import SetEstimator, Fit, SetXTest, SetYTest, SetXTrain, SetYTrain, CrossValidation
from visitors.PreprocessVisitor import Expand
from visitors.PlotVisitor import PlotEstimatorLearningCurve
from Utility import Utility as util
import sys
import os
import numpy as np
import pandas as pd

class AddDataDecorator(Decorator):

    def __init__(self, model, featureset, truth=False, test=False):
        """ initialize the Decorator with the Model to perform a estimator search
        with a given drop on the data"""
        super(AddDataDecorator, self).__init__(model)
        self._featureset = featureset
        self._truth = truth
        self._test = test

    def operation(self):
        """ Add Data and Truth to Model"""
        try:
            self._component.operation()
            model = self.get_component()
            dataframe = self._featureset.get_featureset().get_featureset()

            for column in dataframe:
                if dataframe[column].dtype == "object":
                    if isinstance(dataframe[column].iloc[0], (list, tuple, np.ndarray)):
                        visitor = Expand(column)
                        self._featureset.get_featureset().accept(visitor)

            dataframe = self._featureset.get_featureset().get_featureset()
            dataframe_truth = dataframe[self._featureset.get_truth_column()].values
            dataframe_train = dataframe.drop(columns=self._featureset.get_truth_column(), axis=1).values

            if self._test:
                visitor = SetYTest(dataframe_truth)
                model.accept(visitor)
                visitor = SetXTest(dataframe_train)
                model.accept(visitor)
                model.set_split_data(True)
            else:
                visitor = SetYTrain(dataframe_truth)
                model.accept(visitor)
                visitor = SetXTrain(dataframe_train)
                model.accept(visitor)
        except Exception as error:
            util.print_error("Error: Unable to compute requested task.")

            exc_type, exc_obj, exc_tb = sys.exc_info()
            filename = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]

            util.print_error("Error of type " + str(exc_type) + " occurred at " + filename + " line "
                             + str(exc_tb.tb_lineno) + ":")
            util.print_error(error)


class CrossValidationDecorator(Decorator):
    def __init__(self, model, estimator, kfold):
        super(CrossValidationDecorator, self).__init__(model)
        self._estimator = estimator
        self._kfold = kfold

    def operation(self):
        try:
            self._component.operation()
            visitor = SetEstimator(self._estimator, return_value=True)
            model = self.get_component()
            estimator = model.accept(visitor)
            visitor = CrossValidation(estimator, self._kfold)
            result = []
            result.append(model.accept(visitor))
            return result
        except Exception as error:
            util.print_error("Error: Unable to compute requested task.")
            exc_type, exc_obj, exc_tb = sys.exc_info()
            filename = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]

            util.print_error("Error of type " + str(exc_type) + " occurred at " + filename + " line "
                             + str(exc_tb.tb_lineno) + ":")
            util.print_error(error)


class FindEstimatorDecorator(Decorator):

    def __init__(self, model, estimator="classification", plot="lc", plot_best=3, drop=1):
        """ initialize the Decorator with the Model to perform a estimator search
        with a given drop on the data """
        super(FindEstimatorDecorator, self).__init__(model)
        self._estimator = estimator
        self._drop = float(drop)
        self._plot = plot
        self._plot_best = plot_best

    # ToDo Fehler catchen bei no Truth Value
    def operation(self):
        """ Simple search for a estimator"""
        try:
            self._component.operation()
            visitor = SetEstimator(self._estimator)
            metrics = []
            model = self.get_component()
            model.accept(visitor)
            fit = Fit(self._plot)
            """ Use Quantile of Data """
            column_size_x = model.get_x_train().shape[1]
            column_size_y = model.get_y_train().shape[0]
            temp_model = self.get_component()
            # TODO Shuffle/Random Data
            # TODO Test with 0.5 Drop
            if self._drop < 1:
                temp_model.set_x_train(temp_model.get_x_train()[:, :int(column_size_x * self._drop)])
                temp_model.set_y_train(temp_model.get_y_train()[:, :int(column_size_y * self._drop)])


            best_estimator = []
            fit_score = []
            train_score = []
            test_score = []
            estimator_list = temp_model.get_estimator()
            """ Calculate every estimator """
            for estimator in estimator_list:
                temp_model.set_estimator(estimator)
                temp_model.accept(fit)
                visitor = CrossValidation(estimator=estimator, kfold=column_size_x-1)
                cv_result = (temp_model.accept(visitor))
                if self._estimator == "classification":
                    new_score = temp_model.get_metric()['F1Score']
                elif self._estimator == "regression":
                    new_score = temp_model.get_metric()['R2Score']
                best_estimator.append(estimator)
                fit_score.append(new_score)
                train_score.append(cv_result['train_score'])
                test_score.append(cv_result['test_score'])

            result_frame = pd.DataFrame({"estimator": best_estimator,
                                         "fit_score": fit_score,
                                         "train_score": train_score,
                                         "test_score": test_score})
            result_frame = result_frame.sort_values(['fit_score'], ascending=[False])
            #best_estimator = {k: v for k, v in sorted(best_estimator.items(), key=lambda x: x[1], reverse=True)}

            """ Set estimator with best Score """
            model.set_estimator(result_frame['estimator'][0])

            """ Plot best n estimators """
            if self._plot == "lc":
                for key, value in zip(result_frame['estimator'], result_frame['fit_score']):
                    visitor = PlotEstimatorLearningCurve(key)
                    model.accept(visitor)
            elif self._plot == "confusion":
                print("Not Implemented")
                #y_pred = model.get_model_trained().predict(x_test)
                #skplt.metrics.plot_confusion_matrix(y_test, y_pred, normalize=True)
            elif self._plot == "roc":
                print("Not Implemented")
                #y_probas = model.get_model_trained().predict_proba(x_test)
                #skplt.metrics.plot_roc(y_test, y_probas)
            elif self._plot == "pcall":
                print("Not Implemented")
                #y_probas = model.get_model_trained().predict_proba(x_test)
                #skplt.metrics.plot_precision_recall(y_test, y_probas)

            tmp_list = []
            x = 0
            for key, value in zip(result_frame['estimator'], result_frame['fit_score']):
                result = str(type(key).__name__) + " : " + str(value)
                tmp_list.append(result)
                x = x + 1
                if x >= self._plot_best:
                    break
            return tmp_list
        except Exception as error:
            util.print_error("Error: Unable to compute requested task.")

            exc_type, exc_obj, exc_tb = sys.exc_info()
            filename = os.path.split(exc_tb.tb_frame.f_code.co_filename)[1]

            util.print_error("Error of type " + str(exc_type) + " occurred at " + filename + " line "
                             + str(exc_tb.tb_lineno) + ":")
            util.print_error(error)