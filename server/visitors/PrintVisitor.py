from visitors.Visitor import Visitor
from Utility import Utility as util
import numpy as np


class PrintVisitor(Visitor):
    def visit(self, featureset):
        pass

    def get_type(self, featureset, column):
        try:
            data_type = featureset.get_featureset().get_featureset()[column].dtype
            if data_type == "object":
                data = featureset.get_featureset().get_featureset()[column]

                for x in range(0, 1000):
                    if len(data) <= x:
                        continue

                    if isinstance(data.iloc[x], (list, tuple, np.ndarray)):
                        if len(data.iloc[x]) == 0:
                            continue
                        elif isinstance(data.iloc[x][0], str):
                            return "stringarray"
                        elif isinstance(data.iloc[x][0], int):
                            return "intarray"
                        elif isinstance(data.iloc[x][0], float):
                            return "floatarray"
                        else:
                            return "featurevector_"+str(data.iloc[x][0].dtype)
                    elif isinstance(data.iloc[x], str):
                        return "string"
            elif isinstance(data_type, str):
                return "string"
            else:
                return str(data_type)
        except Exception as error:
            util.print_error("Unable to print data type " + str(error))
            util.print_detailed_error()


class PrintSize(PrintVisitor):
    def __init__(self, dimension="num_rows"):
        self._dimension = dimension

    def visit(self, featureset):
        try:
            tmp_list = []
            if self._dimension == "num_rows":
                tmp_list.append(str(featureset.get_featureset().get_featureset().shape[0]))
            elif self._dimension == "num_columns":
                tmp_list.append(str(featureset.get_featureset().get_featureset().shape[1]))
            return tmp_list
        except Exception as error:
            util.print_error("Unable to print data size" + str(error))
            util.print_detailed_error()


class PrintColumn(PrintVisitor):
    def __init__(self, column):
        self._column = column

    def visit(self, featureset):
        try:
            return featureset.get_featureset().get_featureset().loc[:, self._column][:10]
        except Exception as error:
            util.print_error("Unable to print column data:" + str(error))
            util.print_detailed_error()


class PrintHead(PrintVisitor):
    def visit(self, featureset):
        try:
            tmp_list = []
            for idx, col in enumerate(featureset.get_featureset().get_featureset().columns):
                name = col
                dtype_val = self.get_type(featureset, col)
                tmp = (str(idx) + "\t" + str(name) + "\t" + str(dtype_val))
                tmp_list.append(tmp)
            return tmp_list
        except Exception as error:
            util.print_error("Unable to print data head:" + str(error))
            util.print_detailed_error()


class PrintInfo(PrintVisitor):
    def visit(self, featureset):
        try:
            return str(featureset.get_featureset().get_featureset().info())
        except Exception as error:
            util.print_error("Unable to print featureset info:" + str(error))
            util.print_detailed_error()


class PrintDataType(PrintVisitor):
    def visit(self, featureset):
        try:
            answer = []
            for col in featureset.get_featureset().get_featureset().columns:
                answer.append(str(col) + " " + self.get_type(featureset, col))
            return answer
        except Exception as error:
            util.print_error("Unable to print datatype:" + str(error))
            util.print_detailed_error()


class PrintNaN(PrintVisitor):
    def visit(self, featureset):
        try:
            tmp_list = []
            null_list = featureset.get_featureset().get_featureset().isnull().sum()
            i = 0
            dataframe = featureset.get_featureset().get_featureset()
            if featureset.get_featureset().get_set_index() is not None:
                tmp = ("index" + " " + str(featureset.get_featureset().get_set_index()) + " " + str(dataframe.index.dtype))
                tmp_list.append(tmp)
            for col in dataframe:
                name = col
                dtype_val = self.get_type(featureset, col)
                tmp = (str(i) + " " + str(name) + " " + str(dtype_val) + " " + str(null_list[i]))
                tmp_list.append(tmp)
                i += 1
            return tmp_list
        except Exception as error:
            util.print_error("Unable to print NaN data" + str(error))
            util.print_detailed_error()


class PrintModelMetric(PrintVisitor):
    def visit(self, model):
        try:
            if model._model_trained is None:
                return "Model is not trained!"
            else:
                return str(model.get_metric())
        except Exception as error:
            util.print_error("Unable to print model metric" + str(error))
            util.print_detailed_error()


class Index(PrintVisitor):
    def visit(self, featureset):
        try:
            tmp_list = []
            tmp_list.append(str(featureset.get_index()))
            return tmp_list
        except Exception as error:
            util.print_error("Unable to print Index Data" + str(error))
            util.print_detailed_error()


class Truth(PrintVisitor):
    def visit(self, featureset):
        try:
            tmp_list = []
            tmp_list.append(str(featureset.get_truth_column()))
            return tmp_list
        except Exception as error:
            util.print_error("Unable to print Truth Data" + str(error))
            util.print_detailed_error()
