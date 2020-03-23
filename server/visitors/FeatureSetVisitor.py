# -*- coding: utf-8 -*-
"""
Created on Mon Aug 21 14:00:16 2017

@author: Marcel
"""

import os
import pandas as pd
import numpy as np

from visitors.Visitor import Visitor as visitor
from Utility import Utility as util

""" Loading Dataset | Analyze Dataset """


class LoadFeatureSetVisitor(visitor):
    """ Load Data from Path into Featureset"""

    def __init__(self, path=None, orient=None, index=None):
        self._path = path
        self._orient = orient
        self._index = index

    def visit(self, featureset):
        """ Load new Data"""
        if os.path.exists(self._path):
            # Read File Path and checks Extension

            file_name = os.path.basename(self._path)
            print(".. loading data from path:" + str(self._path))
            ext = os.path.splitext(file_name)[1].lower()
            if ext == ".json":
                self.load_json(featureset)
            elif ext == ".jsonl":
                self.load_json(featureset, lines=True, )
            elif ext == ".csv":
                self.load_csv(featureset)
            elif ext == ".excel":
                self.load_excel(featureset)
            elif ext == ".parquet":
                self.load_parquet(featureset)
            else:
                util.print_error("Error: File format is not supported!")
                return 0
        else:
            util.print_error("Error: Invalid filepath " + self._path)
            return 0

    def load_json(self, featureset, lines=False):
        """ load json from File Path """
        try:
            data_frame = pd.read_json(self._path, lines=lines)
            featureset.set_featureset(data_frame)
        except Exception as error:
            util.print_error("Unable to load json to Pandas Dataframe" + str(error))
            util.print_detailed_error()

    def load_csv(self, featureset):
        try:
            # TODO: find_separator method
            # load two lines (without head)
            # for possible separator s:
            #   separate lines
            #   if #separations > 1 and same for both lines
            #     select separator
            # TODO: read_csv-paremeters are hardcoded for study. Parameter for head is required
            data_frame = pd.read_csv(self._path, sep=";")
            featureset.set_featureset(data_frame)
        except Exception as error:
            util.print_error("Unable to load csv to Pandas Dataframe: " + str(error))
            util.print_detailed_error()

    def load_excel(self, featureset):
        try:
            data_frame = pd.read_excel(self._path)
            featureset.set_featureset(data_frame)
        except Exception as error:
            util.print_error("Unable to load excel to Pandas Dataframe: ")
            util.print_detailed_error()

    def load_parquet(self, featureset):
        try:
            data_frame = pd.read_parquet(self._path)
            featureset.set_featureset(data_frame)
        except Exception as error:
            util.print_error("Unable to load parquet to Pandas Dataframe: " + str(error))
            util.print_detailed_error()


class AddFeature(visitor):
    """ Add Feature to Featureset as new column or overwrite column """

    def __init__(self, column, feature, truth=None):
        self._column = column
        self._feature = feature
        self._truth = truth

    def visit(self, featureset):
        try:
            new_featureset = featureset.get_featureset()
            new_featureset[self._column] = self._feature
            featureset.set_featureset(new_featureset)
        except Exception as error:
            util.print_error("Unable to add feature to featureset: " + str(error))
            util.print_detailed_error()


class EditInstances(visitor):
    def __init__(self, column, condition, expression):
        self._column = column
        self._condition = condition
        self._expression = expression

    def visit(self, featureset_container):
        try:
            print("Inside Visitor")
            featureset = featureset_container.get_featureset()
            featureset = featureset.apply(self.compute_value, axis=1)
            print(featureset)
            featureset_container.set_featureset(featureset)
        except Exception as error:
            util.print_error("Unable to edit instances: " + str(error))
            util.print_detailed_error()

    def compute_value(self, featureset):
        apply_on_row = eval(self._condition)
        featureset[self._column] = eval(self._expression) if apply_on_row else featureset[self._column]
        # print(featureset[self._column])
        return featureset


class RemoveFeature(visitor):
    """ Remove Feature from Featureset """

    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            featureset.set_featureset(featureset.get_featureset().drop(self._column, axis=1))
        except Exception as error:
            util.print_error("Unable to remove column from featureset: " + str(error))
            util.print_detailed_error()


class SetIndex(visitor):
    def __init__(self, feature, fromfeatureset=False):
        self._feature = feature
        self._from_featureset = fromfeatureset

    def visit(self, featureset):
        try:
            if self._from_featureset:
                feature = self._feature.get_featureset().index
                temp_featureset = featureset.get_featureset().set_index(feature)
                temp_featureset.index.name = self._feature.get_featureset().index.name
                featureset.set_index(temp_featureset.index.name)
            else:
                temp_featureset = featureset.get_featureset().set_index(self._feature)
                featureset.set_index(self._feature)
            featureset.set_featureset(temp_featureset)
        except Exception as error:
            util.print_error("Unable to set new Index" + str(error))
            util.print_detailed_error()


class SetIndexFromFeatureset(visitor):
    def __init__(self, featureset):
        self._featureset = featureset

    def visit(self, featureset):
        try:
            featureset._set_index = self._featureset.get_featureset().index.name
            featureset.set_featureset(featureset.get_featureset().set_index(self._featureset.get_featureset().index))
        except Exception as error:
            util.print_error("Unable to set new Index" + str(error))
            util.print_detailed_error()


class MatrixToColumns(visitor):
    def __init__(self, matrix, column):
        self._matrix = matrix
        self._column = column

    def visit(self, featureset):
        try:
            counter = 0
            for column in self._matrix[:, 1]:
                if self._matrix.shape[1] == 0:
                    break
                ''' Create column name'''
                column_name = self._column + "_" + str(counter)
                ''' Write new column with column name'''
                featureset.set_featureset_column(column_name, column)
                ''' Delete column from given matrix'''
                self._matrix = np.delete(self._matrix, 0, 1)
                counter += 1
        except Exception as error:
            util.print_error("Failed to convert Matrix to Columns in Featureset" + str(error))
            util.print_detailed_error()


class DropRowByCondition(visitor):
    def __init__(self, condition):
        self._condition = condition

    def visit(self, featureset_element):
        try:
            featureset = featureset_element.get_featureset()
            print(featureset.shape)
            index = featureset[eval(self._condition)].index
            featureset.drop(index, inplace=True)
            featureset.reset_index(inplace=True, drop=True)
            print(featureset.shape)
            featureset_element.set_featureset(featureset)

        except Exception as error:
            util.print_error("Failed to drop rows by condition: " + str(error))
            util.print_detailed_error()


# ToDo Change Name to Merge
class JoinFrame(visitor):
    def __init__(self, featureset):
        self._featureset = featureset

    def visit(self, featureset):
        try:
            featureset.set_featureset(pd.concat([featureset.get_featureset(), self._featureset.get_featureset()],
                                                axis=1, join='inner'))
        except Exception as error:
            util.print_error("Failed to Join Featureset with Featureset" + str(error))
            util.print_detailed_error()

