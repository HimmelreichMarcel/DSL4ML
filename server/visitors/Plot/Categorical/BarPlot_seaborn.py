import seaborn.lineplot as lineplot
from visitors.PlotVisitor import  PlotVisitor as pv
import matplotlib as plt


class LinePlot(pv):
    """ Generates a relational line plot for a featureset """
    def __init__(self, name, x, y):
        self._name = name
        self._X = x
        self._y = y

    def visit(self, featureset):
        try:
            lineplot()
            _fig = plt.gcf(x=self._X, y=self._y, data=featureset.get_featureset())
            self.SaveFigToDic(_fig, self._name)
        except Exception as error:
            print("Unable to plot Line Plot")
            print(error)