import scikitplot.estimators.plot_learning_curve as lc
from visitors.PlotVisitor import  PlotVisitor as pv
import matplotlib as plt


class PlotEstimatorLearningCurve(pv):
    """
    Generates a plot of the train and test learning curves for a estimator
    Custom estimator function are supported if fit and predict method is implemented
    """
    def __init__(self, filename, estimator, x, y):
        self._filename = filename
        self._est = estimator
        self._Y = y
        self._X = x

    def visit(self, featureset):
        try:
            lc(self._estimator, self._X, self._Y)
            _fig = plt.gcf()
            return self.SaveFigToDic(_fig, self._filename)
        except Exception as n:
            print("here")
            print(n)
            print("Unable to plot Estimator learning curve")


