import scikitplot.estimators.plot_feature_importances as pfi
from visitors.PlotVisitor import  PlotVisitor as pv
import matplotlib as plt


class PlotEstimatorLearningCurve(pv):
    """
    Generates a plot of the train and test learning curves for a estimator
    Custom estimator function are supported if fit and predict method is implemented
    """
    def __init__(self, filename, estimator, X, Y, featurenames):
        self._filename = filename
        self._est = estimator
        self._Y = Y
        self._X = X
        self._featurenames = featurenames

    def visit(self, featureset):
        try:
            self._est.fit(self._X,self._Y)
            pfi(self._est, feature_names=self._featurenames)
            _fig = plt.gcf()
            self.SaveFigToDic(_fig, self._filename)
            # return fig
        except Exception as n:
            print("here")
            print(n)
            print("Unable to plot Estimator learning curve")