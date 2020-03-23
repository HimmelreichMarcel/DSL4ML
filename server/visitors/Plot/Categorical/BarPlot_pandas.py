import pandas as pd
from visitors.PlotVisitor import  PlotVisitor as pv
import matplotlib as plt


class LinePlot(pv):
    """ Generates a relational line plot for a featureset """
    def __init__(self, name, x=None, y=None, subplots=None):
        self._name = name
        self._X = x
        self._Y = y
        self._subplots = subplots

    def visit(self, featureset):
        try:
            if self._X is None:
                _fig = featureset.get_featureset().plot.bar(y=self._Y, subplots=self._subplots)
            elif self._Y is None:
                _fig = featureset.get_featureset().plot.bar(x=self._X, subplots=self._subplots)
            elif self._X and self._Y is None:
                _fig = featureset.get_featureset().plot.bar(subplots=self._subplots)
            else:
                _fig = featureset.get_featureset().plot.bar(x=self._X, y=self._Y, subplots=self._subplots)
            self.SaveFigToDic(_fig, self._name)
        except Exception as error:
            print("Unable to plot Line Plot")
            print(error)