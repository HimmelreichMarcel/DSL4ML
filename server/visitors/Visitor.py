# -*- coding: utf-8 -*-
"""
Created on Thu Aug 31 13:05:45 2017

@author: Marcel
"""
import pandas as pd
import numpy as np
from Utility import Utility as Util


class Visitor:
    def __str__(self):
        return self.__class__.__name__

    def checkGroup(self, featureset, column):
        try:
            target_column = featureset[column]
            if target_column.dtype == "object":
                if isinstance(target_column.iloc[0], (list, tuple, np.ndarray)):
                    return True
            return False
        except Exception as error:
            Util.print_error("Unable to check group in featureset: " + str(error))
            Util.print_detailed_error()

    def expand(self, frame, column, return_new_frame=False):
        try:
            # get matrix
            matrix = frame[column]

            # get column names
            columns = []
            for i in range(len(matrix.iloc[0])):
                columns.append(column + "_" + str(i))

            # create dataframe from matrix
            matrix_df = pd.DataFrame(columns=columns)
            for index, col in enumerate(matrix):
                temp_frame = pd.DataFrame(np.array(col), index=columns)
                matrix_df = pd.concat([matrix_df, temp_frame.T], ignore_index=True)

            # create combined index
            frame_columns = list(frame)
            index = frame_columns.index(column)
            frame_columns.remove(column)
            for column in reversed(columns):
                frame_columns.insert(index, column)

            # concat dataframes and reindex
            frame = pd.concat([frame, matrix_df], axis=1)
            frame = frame.reindex(columns=frame_columns)

            if return_new_frame:
                return matrix_df
            else:
                return frame
        except Exception as error:
            Util.print_error("Unable to mask featureset: " + str(error))
            Util.print_detailed_error()

    def group(self, frame, name, column, index):
        # create new column (containing matrix)
        frame[name] = list(frame[column].values)

        # get correct index for new column
        columns = list(frame)
        lowest_index = len(columns) - 1
        for column in columns:
            if column in column:
                lowest_index = columns.index(column)

        # insert column name into columns-list and drop last entry
        columns.insert(lowest_index, name)
        columns.pop()

        # reindex list, drop not-grouped columns
        frame = frame.reindex(columns, axis=1)
        frame = frame.drop(columns=columns, axis=1)

        return frame

"""
matrix = featureset[column].values
featureset[name] = list(matrix)

dataframe = featureset.drop(columns=column, axis=1)

columns = dataframe.columns
columns = lambda x: x.insert(x.index(index), x.pop(x.index(index) + 1))

dataframe = dataframe.reindex(columns=columns)

featureset.set_featureset(dataframe)

target = str(self._name)
frame = featureset.get_featureset()
"""

