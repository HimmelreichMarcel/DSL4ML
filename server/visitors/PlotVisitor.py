
# -*- coding: utf-8 -*-
"""
Created on Tue Oct 24 01:22:40 2017

@author: Marcel
"""

import matplotlib.pyplot as plt
import scikitplot as skplt
import os

from sklearn import svm
from sklearn.decomposition import PCA
from sklearn.linear_model import LogisticRegression
from sklearn.linear_model import Ridge
from sklearn.linear_model import Lasso
from sklearn.linear_model import ElasticNet
from sklearn.linear_model import SGDRegressor, SGDClassifier
from sklearn.naive_bayes import MultinomialNB
from sklearn.ensemble import RandomForestClassifier
from sklearn.ensemble import RandomForestRegressor
from sklearn.cluster import KMeans
from sklearn.svm import LinearSVC, SVC

import numpy as np

from sklearn.model_selection import learning_curve
from sklearn.model_selection import ShuffleSplit

from visitors.Visitor import Visitor as v
 

class PlotVisitor(v):
    def __init__(self, title=None):
        self._title = title
    
    def visit(self, featureset):
        pass

    def SaveFigToDic(self, fig, filename):
        _filename = str(filename) + ".png"
        _path = os.path.dirname(os.path.dirname(os.path.dirname(__file__))) + "\\Data\\Results\\"
        fig.savefig(_path + _filename)
        plt.close()
        #plt.show()
        response = []
        response.append("FileName" + "\t" + _filename)
        response.append("Path" + "\t" + str(_path))
        return response


class BasicPlot(v):
    def __init__(self,column,logy=None,ylabel=None,xlabel=None):
        self.logy = logy
        self.column = column
        self.ylabel = ylabel
        self.xlabel = xlabel

    def visit(self,DataSet):
        try:
            if isinstance(DataSet, ds.DataSet):
                plt.figure()
                if self.logy:
                    df = np.exp(DataSet._dataset[self.column].cumsum())
                    plot = df.plot(logy=True)
                else:
                    df = DataSet._dataset[self.column]
                    plot = DataSet._dataset.plot()
            return plot 
        except Exception as n:
            print(n)
            print("Unable to Plot Data")

class HistoPlot(v):
    def __init__(self, column=None, color='k', alpha=0.5, bins=50):
        self.column= column
        self.color = color
        self.alpha = alpha
        self.bins = bins

    def visit(self, DataSet):
        try:
            if isinstance(DataSet,ds.DataSet):
                if self.column == None:
                    plot = DataSet[self.column].diff().hist(color = self.color, alpha = self.alpha, bins = self.bins)
                else:
                    plot = DataSet.diff().hist(color = self.color, alpha = self.alpha, bins = self.bins)
            return plot
        except:
            print("Unable to plot Histogram")

class BarPlot(v):
    def __init__(self,column,stacked=None,ylabel=None,xlabel=None):
        self.stacked= stacked
        self.column = column
        self.ylabel = ylabel
        self.xlabel = xlabel

    def visit(self,DataSet):
        try:
            if isinstance(DataSet, ds.DataSet):
                plt.figure()
                df = DataSet[self.column].cumsum()
                if self.stacked:                    
                    plot = df.plot(stacked=True, kind='bar')
                else:
                    plot = df.plot(kind='bar')
            return plot 
        except:
            print("Unable to Plot Data")

class ScatterPlot(v):
    def __init__(self, column, alpha=None, figsize=None):
        self.alpha = alpha
        self.figsize= figsize
        self.column = column
        if self.alpha == None:
            self.alpha = 0.2
        if self.figsize == None:
            self.figsize = (6,6)
    
    def visit(self,DataSet):
        try:
            if isinstance(DataSet, ds.DataSet):
                plt.figure()
                plot = scatter_matrix(DataSet[self.column],self.alpha,self.figsize,diagonal='kde')
            return plot
        except:
            print("Unable to plot Scatter Matrix")


class PlotPCA(PlotVisitor):
#Plots PCAs components explained variance ratios
    def __init__(self,estimator):
        self._estimator = GetEst(estimator)
        self._est = estimator
    
    def visit(self,FeatureSet):
        try:
            skplt.decomposition.plot_pca_component_variance(PCA(random_state=1).fit(FeatureSet.X), self._title)
            _fig = plt.gcf()
            return SaveFigToDic(_fig,self._est,"_LC",self._estimator)
            
        except:
            print("Unable to plot PCA")


class PlotPCA2D(PlotVisitor):
#Plots the 2-dimensional projection of PCA on a given dataset
    def __init__(self,X,Y):
        self._pca = PCA(random_state=1).fit(X)
        self._X = X
        self._Y = Y
        
        
    def plot(self):
        try:
            skplt.decomposition.plot_pca_2d_projection(self._pca,self._X,
                                                       self._Y,self._title)
            return plt.show()
        except:
            print("Unable to plot PCA 2D")


class PlotEstimatorLearningCurve(PlotVisitor):
#Generates a plot of the train and test learning curves for a estimator
    def __init__(self, estimator, name=None):
        self._estimator = estimator
        self._name = name
        
    def visit(self, model):
        try:
            skplt.estimators.plot_learning_curve(self._estimator, model.get_x_train(), model.get_y_train(),
                                                 title="Learning Curve "+str(type(self._estimator).__name__))
            _fig = plt.gcf()
            return self.SaveFigToDic(_fig, str(type(self._estimator).__name__)+"_LC")
            #return fig
        except Exception as n:
            print(n)
            print("Unable to plot Estimator learning curve")   
"""
class PlotLearningCurve(PlotVisitor):
    def __init__(self, estimator,title, testsize=0.2,n_jobs=1, split=100):
        self._estimator = GetEst(estimator)
        self._title=title
        self._testsize=testsize
        self._n_jobs = n_jobs
        self._split = split

    def visit(self, Featureset):
        try:
            cv = ShuffleSplit(n_splits=self._split, test_size=self._testsize, random_state=0)
            plt.figure()
            plt.title(self._title)
            plt.ylim((0.5,1.01))
            plt.xlabel("Training examples")
            plt.ylabel("Score")
            train_sizes, train_scores, test_scores = learning_curve(
                estimator, Featureset.X, Featureset.Y, cv=cv, n_jobs=n_jobs, train_sizes=np.linspace(.1, 1.0, 5))
            train_scores_mean = np.mean(train_scores, axis=1)
            train_scores_std = np.std(train_scores, axis=1)
            test_scores_mean = np.mean(test_scores, axis=1)
            test_scores_std = np.std(test_scores, axis=1)
            plt.grid()

            plt.fill_between(train_sizes, train_scores_mean - train_scores_std,
                             train_scores_mean + train_scores_std, alpha=0.1,
                             color="r")
            plt.fill_between(train_sizes, test_scores_mean - test_scores_std,
                             test_scores_mean + test_scores_std, alpha=0.1, color="g")
            plt.plot(train_sizes, train_scores_mean, 'o-', color="r",
                     label="Training score")
            plt.plot(train_sizes, test_scores_mean, 'o-', color="g",
                     label="Cross-validation score")

            plt.legend(loc="best")
            plt.show()
            return plt
        except:
            print("Unable to plot learning curve")
"""
class PlotEstimatorFeatureImportance(PlotVisitor):
#Takes fit Data as Argument and Feature Names 
#calculate and plot the importance of features
    def __init__(self,model,feature_names):
        self._fit = model
        self._name = feature_names
        
    def plot(self):
        try:
            skplt.estimators.plot_feature_importance(self._fit,self._name)
            return plt.show()
        except:
            print("Unable to plot Estimator feature importance")
            
class PlotClusterElbow(PlotVisitor):
# Plots elbow curve of different values of K for KMeans clustering
    def __init__(self,X,cluster_range):
        self._range = cluster_range
        self._X = X
         
    def plot(self):
        try:
            skplt.cluster.plot_elbow_curve(KMeans(random_state=1), 
                                           self._X,cluster_ranges=(1,self._range))
            return plt.show()
        except:
            print("Unable to plot cluster elbow")

class PlotConfusionMatrix(PlotVisitor):
#Generates confusion matrix plot from predictions and true labels
    def __init__(self,Y_test,Y_predict):        
        self._test = Y_test
        self._predict = Y_predict
        
    def plot(self):
        try:
            self._estimator.fit(self._test, self._predict, normalize=True)
            return plt.show()
        except:
            print("Unable to plot confusion matrix")
            
class PlotROCCurve(PlotVisitor):
#Generates the ROC Curves from labels and predicted score/probabilities
    def __init__(self,Y_test,Y_probas):
        self._test = Y_test
        self._proba =  Y_probas
        
    def plot(self):
        try:
            skplt.metrics.plot_roc_curve(self._test,self._proba)
            return plt.show()
        except:
            print("Unable to plot ROC Curve")


def GetEst(estimator):
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
        return SVC()
    elif estimator == "linearsvc":
        return LinearSVC()
    elif estimator == "sgdclassify":
        return SGDClassifier()
    elif estimator == "sgdregress":
        return SGDRegressor()


def SaveFigToDic(fig,estimator,mode,_est):
    _filename = str(estimator)+"_LC"+".png"
    _path = os.path.dirname(os.path.dirname(os.path.dirname(__file__))) + "\\Data\\Results\\"            
    fig.savefig(_path + _filename)
    plt.show()
    response = []
    response.append("FileName"+"\t"+_filename)
    response.append("Path"+"\t"+str(_path))
    response.append("Estimator"+"\t"+str(_est))
    return response
