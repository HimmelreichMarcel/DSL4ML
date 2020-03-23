from sklearn import preprocessing as p
from nltk.stem.wordnet import WordNetLemmatizer
from nltk.stem import PorterStemmer
from sklearn.decomposition import PCA
from visitors.Visitor import Visitor as PreprocessVisitor

from Utility import Utility as Util
import pandas as pd
import numpy as np
import numbers

lemmatizer = WordNetLemmatizer()
porter = PorterStemmer()


# Calculate arithmetic median for values
class Condense(PreprocessVisitor):
    def __init__(self, column, sequential=False, numeric_feature="median", save_index=True, string_feature="join"):
        self._column = column
        self._sequential = sequential
        self._string_feature = string_feature
        self._numeric_feature = numeric_feature
        self._save_index = save_index

    def visit(self, featureset):
        try:
            featureset_df = featureset.get_featureset()
            new_featureset = pd.DataFrame()
            if self._sequential is True:
                temp_dataframe = pd.DataFrame()
                temp_value = None
                temp_index = []
                for index, row in featureset_df.iterrows():
                    "Set first indexlist element"
                    if temp_value is None:
                        temp_value = row[self._column]
                        temp_index.append(index)
                    else:
                        "Check if value of column is in current row and add the row to new dataframe"
                        if temp_value != row[self._column]:
                            "Save the value from the selected column"
                            first_value_frame = pd.DataFrame({self._column: [temp_value]})

                            "Calculate the value for every column"
                            second_value_frame = self.select_numeric_feature(temp_dataframe)

                            "Transform Series Dataframe to Dataframe and transpose it"
                            second_value_frame = second_value_frame.to_frame().transpose()

                            "Add every column to dataframe"
                            for name, value in second_value_frame.iteritems():
                                first_value_frame[name] = value

                            "Add new row to dataframe"
                            new_featureset = new_featureset.append(first_value_frame, ignore_index=True)
                            temp_dataframe = pd.DataFrame()

                            "Add index to indexlist"
                            temp_index.append(index)
                            temp_value = row[self._column]
                    "Add Row to temporary dataframe"
                    temp_dataframe = temp_dataframe.append(featureset_df.iloc[index])

                "Save the value from the selected column"
                first_value_frame = pd.DataFrame({self._column: [temp_value]})

                "Calculate the value for every column"
                second_value_frame = self.select_numeric_feature(temp_dataframe)

                "Transform Series Dataframe to Dataframe and transpose it"
                second_value_frame = second_value_frame.to_frame().transpose()

                "Add every column to dataframe for last row"
                for name, value in second_value_frame.iteritems():
                    first_value_frame[name] = value

                new_featureset = new_featureset.append(first_value_frame, ignore_index=True)
            else:
                accumulate_list = featureset_df[self._column].unique()
                temp_unique_list = accumulate_list
                temp_index = []
                "Create Index list for unique values"
                for index, row in featureset_df.iterrows():
                    for value in temp_unique_list:
                        if value == row[self._column]:
                            temp_unique_list = temp_unique_list[temp_unique_list != value]
                            temp_index.append(index)
                            break
                for value in accumulate_list:
                    "Select all rows with value in column"
                    temp_dataframe = featureset_df.loc[featureset_df[self._column] == value]

                    "Save the value from the selected column"
                    first_value_frame = pd.DataFrame({self._column: [value]})

                    "Calculate the value for every column"
                    second_value_frame = self.select_numeric_feature(temp_dataframe)

                    "Transform Series Dataframe to Dataframe and transpose it"
                    second_value_frame = second_value_frame.to_frame().transpose()

                    "Add every column to dataframe"
                    for name, second_value in second_value_frame.iteritems():
                        first_value_frame[name] = second_value
                    new_featureset = new_featureset.append(first_value_frame, ignore_index=True)

            # Update Dataframe index
            if self._save_index:
                new_featureset["#index#"] = temp_index
                new_featureset = new_featureset.set_index("#index#")
                new_featureset.index.name = None

            "Reindexcolumns of the new dataframe with the old dataframe"
            new_featureset = new_featureset.reindex(columns=featureset_df.columns)
            featureset.set_featureset(new_featureset)

        except Exception as error:
            Util.print_error("Unable to condense Dataframe: " + str(error))
            Util.print_detailed_error()

    def select_numeric_feature(self, dataframe):
        if self._numeric_feature == "median":
            return dataframe.median()
        elif self._numeric_feature == "mean":
            return dataframe.mean()
        elif self._numeric_feature == "sum":
            return dataframe.sum()
        elif self._numeric_feature == "min":
            return dataframe.min()
        elif self._numeric_feature == "max":
            return dataframe.max()


class CondenseSimple(PreprocessVisitor):
    def __init__(self, column, numeric_feature="median"):
        self._column = column
        self._numeric_feature = numeric_feature

    def visit(self, featureset):
        try:
            featureset_df = featureset.get_featureset()

            # collect columns to restore initial column order in the end
            columns = list(featureset_df)

            # expand features, aggregate features, group features
            index_df = featureset_df[self._column] if type(self._column) is list else featureset_df[[self._column]]
            aggregated_groups = []
            for column in featureset_df:
                if self.checkGroup(featureset.get_featureset(), self._column):
                    group_df = self.expand(featureset_df, column, True)
                    group_idx = pd.concat([index_df, group_df], axis=1)
                    group_idx = group_idx.groupby(self._column).aggregate(self.select_numeric_op())
                    group_idx[column] = list(group_idx.values)
                    print(group_idx[[column]])
                    aggregated_groups.append(group_idx[[column]])

            print(featureset_df)
            featureset_df = featureset_df.groupby(self._column).aggregate(self.select_numeric_op())
            aggregated_groups.append(featureset_df)
            featureset_df = pd.concat(aggregated_groups, axis=1)
            featureset_df = featureset_df.reset_index()
            print(featureset_df)
            featureset_df = featureset_df.reindex(columns, axis=1)
            print(featureset_df)

            featureset.set_featureset(featureset_df)

        except Exception as error:
            Util.print_error("Unable to condense Dataframe: " + str(error))
            Util.print_detailed_error()

    def select_numeric_op(self):
        if self._numeric_feature == "median":
            return np.median
        elif self._numeric_feature == "mean":
            return np.mean
        elif self._numeric_feature == "sum":
            return np.sum
        elif self._numeric_feature == "min":
            return np.min
        elif self._numeric_feature == "max":
            return np.max


class Split(PreprocessVisitor):
    def __init__(self, id_split, mode="sequential"):
        self._id_split = id_split
        self._mode = mode

    def visit(self, featureset):
        try:
            featuresets = {}
            data = featureset.get_featureset()
            temp_data = []
            self.create_split_list(data.shape[0])
            for key, value in self._id_split.items():
                if self._mode == "sequential":
                    temp_data = data[:value]
                elif self._mode == "random":
                    temp_data = np.split(data, value)
                data = data.iloc[value:]
                featuresets[key] = temp_data
            return featuresets
        except Exception as error:
            Util.print_error("Unable to split Featureset in multiple Frames: " + str(error))
            Util.print_detailed_error()

    def create_split_list(self, row_count):
        dic_len = len(self._id_split)
        temp_dict = {}
        temp_row_count = row_count
        for key, value in self._id_split.items():
            temp_dict[key] = int(temp_row_count*value)
            temp_row_count = temp_row_count - temp_dict[key]
            dic_len = dic_len - 1
            for key2, value2 in self._id_split.items():
                if key != key2 and dic_len > 0:
                    self._id_split[key2] = self._id_split[key2] + value/dic_len
        self._id_split = temp_dict


class Sort(PreprocessVisitor):
    def __init__(self, mode="shuffle", column=None):
        self._mode = mode
        self._column = column

    def visit(self, featureset):
        try:
            data = featureset.get_featureset()
            if self._mode == "shuffle":
                data = data.sample(frac=1)
            elif self._mode == "column":
                data = data.sort_values(by=self._column)
            elif self._mode == "index":
                data = data.sort_index()
            featureset.set_featureset(data)
        except Exception as error:
            Util.print_error("Unable to sort featureset: " + str(error))
            Util.print_detailed_error()


class Mask(PreprocessVisitor):
    def __init__(self, condition, column=None):
        self._condition = condition
        self._column = column

    def visit(self, featureset_0):
        try:
            featureset = featureset_0.get_featureset()
            if self._column is None:
                featureset = featureset.mask(eval(self._condition))
            else:
                feature = featureset[self._column]
                if feature.dtype == "object":
                    if isinstance(feature.iloc[0], (list, tuple, np.ndarray)):
                        feature = self.expand(pd.DataFrame(feature), self._column)
                        feature = feature.mask(eval(self._condition))
                        feature = list(feature.values)
                else:
                    feature = feature.mask(eval(self._condition))
                featureset[self._column] = feature
            featureset_0.set_featureset(featureset)
        except Exception as error:
            Util.print_error("Unable to mask featureset: " + str(error))
            Util.print_detailed_error()


class Interpolate(PreprocessVisitor):
    def __init__(self, method="linear"):
        self._method = method

    def visit(self, featureset):
        try:
            data = featureset.get_featureset()
            if self._method == "median":
                data = data.fillna(data.median())
            else:
                data = data.interpolate(method=self._method)
            featureset.set_featureset(data)
        except Exception as error:
            Util.print_error("Unable to mask featureset: " + str(error))
            Util.print_detailed_error()


# Returns Array with label  binarized data
# Useful for labeling Truth Data
class LabelBinarize(PreprocessVisitor):
    def __init__(self, column=None):
        self._column = column

    def visit(self, featureset):
        preprocessor = p.LabelBinarizer()
        try:
            if self._column is not None:
                featureset.set_featureset_column(
                    self._column,
                    preprocessor.fit_transform(featureset.get_column_values(self._column)))
            else:
                featureset.set_featureset_values(preprocessor.fit_transform(featureset.get_featureset_values()))
        except Exception as error:
            Util.print_error("Unable to apply Label Binarization: " + str(error))
            Util.print_detailed_error()


# Returns array with encoded categorical integer features
class OneHotEncoder(PreprocessVisitor):
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        preprocessor = p.OneHotEncoder()
        try:
            if self._column is not None:
                featureset.set_featureset_column(
                    self._column,
                    preprocessor.fit_transform(featureset.get_column_values(self._column)))
            else:
                featureset.set_featureset_values(preprocessor.fit_transform(featureset.get_featureset_values()))
        except Exception as error:
            Util.print_error("Unable to apply One Hot Encoding: " + str(error))
            Util.print_detailed_error()


# Returns Array with encoded labels
class LabelEncoder(PreprocessVisitor):
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        preprocessor = p.LabelEncoder()
        try:
            if self._column is not None:
                featureset.set_featureset_column(
                    self._column,
                    preprocessor.fit_transform(featureset.get_column_values(self._column)))
            else:
                featureset.set_featureset_values(preprocessor.fit_transform(featureset.get_featureset_values()))
            classes = preprocessor.classes_
            label = preprocessor.transform(classes)
            message = []
            for _class, _label in zip(classes, label):
                message.append(str(_class))
            return message
        except Exception as error:
            Util.print_error("Unable to apply Label Encoding: " + str(error))
            Util.print_detailed_error()


class PCA_V(PreprocessVisitor):
    def __init__(self, column, n=2):
        self._column = column
        self._n = n

    def visit(self, featureset):
        pca = PCA(self._n)
        log = None
        try:
            preprocessor = pca.fit_transform(featureset.GetSelectedFeatures())
            log.append("Components " + preprocessor.components_)
            log.append("ExplainedVariance " + preprocessor.explained_variance_)
            log.append("ExplainedVarianceRatio " + preprocessor.explained_variance_ratio_)
            log.append("SingularValue " + preprocessor.singular_values_)
            log.append("Mean " + preprocessor.mean_)
            return log
        except Exception as error:
            Util.print_error("Unable to apply PCA: " + str(error))
            Util.print_detailed_error()


class Imputer(PreprocessVisitor):
    def __init__(self, column, strategy="mean"):
        self._column = column
        self._strategy = strategy

    def visit(self, featureset):
        try:
            preprocessor = p.Imputer(strategy=self._strategy)
            if self._column is not None:
                featureset.set_featureset_column(self._column,
                                                 preprocessor.fit_transform(featureset.get_column_values(self._column)))
            else:
                featureset.set_featureset_values(preprocessor.fit_transform(featureset.get_featureset_values()))
        except Exception as error:
            Util.print_error("Unable to impute missing values: " + str(error))
            Util.print_detailed_error()


class Standardization(PreprocessVisitor):
    def __init__(self, column, group_by=None):
        self._column = column
        self._group_by = group_by

    def visit(self, featureset):
        try:
            featureset_df = featureset.get_featureset()
            if self._group_by is not None:
                group_column = featureset_df[self._group_by]

                if self._column is not None:
                    # check if column is single-column or column group
                    feature_vector = False
                    target_column = featureset_df[self._column]
                    if self.checkGroup(featureset.get_featureset(), self._column):
                        feature_vector = True
                        target_column = self.expand(featureset_df, self._column, True)

                    # add group_column to dataframe and transform standardization on groups
                    target_column = pd.concat([target_column, group_column], axis=1)
                    target_column = target_column.groupby(self._group_by).transform(lambda x: (x - x.mean()) / x.std())
                    if feature_vector:
                        featureset.set_featureset_column(self._column, list(target_column.values))
                    else:
                        featureset.set_featureset_column(self._column, target_column)

                else:
                    # group dataframe by group_column and perform standardization on whole df
                    data = featureset_df.groupby(self._group_by).transform(lambda x: (x - x.mean()) / x.std())
                    featureset.set_featureset_column(self._column, data)

            else:
                if self._column is not None:
                    # check if column is single-column or column group
                    target_column = featureset_df[self._column]
                    feature_vector = False
                    if self.checkGroup(featureset.get_featureset(), self._column):
                        feature_vector = True
                        target_column = self.expand(featureset_df, self._column, True)

                    # add group_column to dataframe and transform standardization on groups
                    target_column = target_column.transform(lambda x: (x - x.mean()) / x.std())
                    if feature_vector:
                        featureset.set_featureset_column(self._column, list(target_column.values))
                    else:
                        featureset.set_featureset_column(self._column, target_column)

                else:
                    # group dataframe by group_column and perform standardization on whole df
                    data = featureset_df.transform(lambda x: (x - x.mean()) / x.std())
                    featureset.set_featureset_column(self._column, data)

        except Exception as error:
            Util.print_error("Unable to standardize values: " + str(error))
            Util.print_detailed_error()


class Normalizer(PreprocessVisitor):
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            preprocessor = p.Normalizer()
            if self._column is not None:
                featureset.set_featureset_column(self._column,
                                                 preprocessor.fit_transform(featureset.get_column_values(self._column)))
            else:
                featureset.set_featureset_values(preprocessor.fit_transform(featureset.get_featureset_values()))
        except Exception as error:
            Util.print_error("Unable to normalize values: " + str(error))
            Util.print_detailed_error()


class Binarizer(PreprocessVisitor):
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            preprocessor = p.Binarizer()
            if self._column is not None:
                featureset.set_featureset_column(self._column,
                                                 preprocessor.fit_transform(featureset.get_column_values(self._column)))
            else:
                featureset.set_featureset_values(preprocessor.fit_transform(featureset.get_featureset_values()))
        except Exception as error:
            Util.print_error("Unable to binarize values: " + str(error))
            Util.print_detailed_error()


class Expand(PreprocessVisitor):
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            frame = featureset.get_featureset()

            # get matrix
            matrix = frame[self._column]

            # get column names
            columns = []
            for i in range(len(matrix.iloc[0])):
                columns.append(self._column + "_" + str(i))

            # create dataframe from matrix
            matrix_df = pd.DataFrame(columns=columns)
            for index, col in enumerate(matrix):
                temp_frame = pd.DataFrame(np.array(col), index=columns)
                matrix_df = pd.concat([matrix_df, temp_frame.T], ignore_index=True)

            # create combined index
            frame_columns = list(frame)
            index = frame_columns.index(self._column)
            for column in reversed(columns):
                frame_columns.insert(index, column)
            frame_columns.remove(self._column)

            # concat dataframes and reindex
            matrix_df.set_index(frame.index, inplace=True)
            print(matrix_df.index)
            print(frame.index)

            frame = pd.concat([frame, matrix_df], axis=1)
            frame = frame.reindex(columns=frame_columns)

            print(frame.shape)
            featureset.set_featureset(frame)

            '''
            dataframe = featureset.get_featureset()
            temp_index = dataframe.index.values
            new_dataframe = pd.DataFrame()
            print(self._column)
            matrix = dataframe[self._column]
            matrix_element_len = len(matrix.iloc[0])
            column_list = []
            for x in range(0, matrix_element_len):
                column_list.append(str(self._column) + "_" + str(x))

            temp_dataframe = pd.DataFrame(columns=column_list)
            for row in matrix:
                temp_frame = pd.DataFrame(np.array(row), index=column_list)
                temp_dataframe = pd.concat([temp_dataframe, temp_frame.T], ignore_index=True)

            new_dataframe = pd.concat([new_dataframe, temp_dataframe], axis=1)
            new_dataframe = new_dataframe.set_index(temp_index)
            dataframe = pd.concat([dataframe, new_dataframe], axis=1)
            dataframe = dataframe.drop(columns=str(self._column), axis=1)
            featureset.set_featureset(dataframe)
            '''

        except Exception as error:
            Util.print_error("Unable to Expand Feature: " + str(error))
            Util.print_detailed_error()


class Group(PreprocessVisitor):
    def __init__(self, name, columns):
        self._name = name
        self._columns = columns

    def visit(self, featureset):
        try:
            target = str(self._name)
            frame = featureset.get_featureset()

            # create new column (containing matrix)
            frame[target] = list(frame[self._columns].values)

            # get correct index for new column
            columns = list(frame)
            lowest_index = len(columns) - 1
            for column in columns:
                if column in self._columns:
                    lowest_index = columns.index(column)

            # insert column name into columns-list and drop last entry
            columns.insert(lowest_index, target)
            columns.pop()

            # reindex list, drop not-grouped columns
            frame = frame.reindex(columns, axis=1)
            frame = frame.drop(columns=self._columns, axis=1)

            featureset.set_featureset(frame)

        except Exception as error:
            Util.print_error("Unable to Group Features: " + str(error))
            Util.print_detailed_error()


class FillEmptyCellsVisitor(PreprocessVisitor):
    def __init__(self, column, feature_type, value):
        self._column = column
        self._type = feature_type
        self._value = value

    def visit(self, featureset):
        try:
            featureset_df = featureset.get_featureset()

            # check if column is single-column or column group
            feature_vector = False
            target_column = featureset_df[self._column]
            if target_column.dtype == "object":
                if isinstance(target_column.iloc[0], (list, tuple, np.ndarray)):
                    feature_vector = True
                    target_column = self.expand(featureset_df, self._column, True)

            # TODO no option for feature vector with string features yet (compare numbers)
            if self._type == "string":
                target_column.fillna(self._value, inplace=True)

            if self._type == "number":
                if feature_vector:
                    for column in target_column:
                        self.fill_number_feature_cells(target_column[column])
                    featureset_df[self._column] = list(target_column[list(target_column)].values)
                else:
                    self.fill_number_feature_cells(target_column)

            featureset.set_featureset(featureset_df)
        except Exception as error:
            Util.print_error("Unable to Group Features: " + str(error))
            Util.print_detailed_error()

    def fill_number_feature_cells(self, target_column):
        if isinstance(self._value, numbers.Number):
            target_column.fillna(self._value, inplace=True)
        elif self._value == "median":
            target_column.fillna(target_column.median(), inplace=True)
        elif self._value == "mean":
            target_column.fillna(target_column.mean(), inplace=True)
        elif self._value == "interpolate":
            target_column.interpolate(inplace=True)
        elif self._value == "zero":
            target_column.fillna(0, inplace=True)
