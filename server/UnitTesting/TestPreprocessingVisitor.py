import unittest
import pandas
import numpy as np
import pandas.testing as test
from FeatureSetElement import FeatureSet
from visitors.PreprocessVisitor import Condense, Interpolate, Mask, Sort, Split


class TestNaturalLanguage(unittest.TestCase):

    def test_condense(self):
        column = "test_column"
        column_1 = "test_column0"
        sequential = True
        test_data = pandas.DataFrame({column: [1, 2, 3, 4, 5],
                                      column_1: [5, 4, 3, 2, 1],
                                      "species": ["blue", "blue", "red", "red",  "blue"]})
        verify_data = pandas.DataFrame({column: [1.5, 3.5, 5],
                                        column_1: [4.5, 2.5, 1],
                                        "species": ["blue", "red", "blue"]}, index=[0, 2, 4])
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = Condense("species", sequential)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

        test_data = pandas.DataFrame({column: [1, 2, 3, 4, 5],
                                      "species": ["blue", "blue", "red", "red", "blue"]})
        verify_data = pandas.DataFrame({column: [2, 3.5],
                                        "species": ["blue", "red"]}, index=[0, 2])
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = Condense("species")
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_mask(self):
        column = "test_column"
        column_1 = "second_column"
        condition = "featureset > 3"
        test_data = pandas.DataFrame({column: [1, 2, 3, 4, 5],
                                  column_1: [5, 4, 3, 2, 1]})
        verify_data = pandas.DataFrame({column: [1, 2, 3, np.NaN, np.NaN],
                                  column_1: [np.NaN, np.NaN, 3, 2, 1]})

        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = Mask(condition)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())



    def test_interpolate(self):
        column = "test_column"
        column_1 = "second_column"
        mode_0 = "nearest"
        mode_1 = "linear"
        test_data = pandas.DataFrame({column: [1, 2, np.NaN, np.NaN, 5],
                                  column_1: [5.3, np.NaN, 3.5, np.NaN, 14.31]})
        verify_data = pandas.DataFrame({column: [1, 2, 2.0, 5.0, 5],
                                  column_1: [5.3, 5.3, 3.5, 3.5, 14.31]})

        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)

        visitor = Interpolate(mode_0)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

        verify_data = pandas.DataFrame({column: [1.0, 2.0, 3.0, 4.0, 5.0],
                                  column_1: [5.3, 4.4, 3.5, 8.905, 14.31]})

        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)

        visitor = Interpolate(mode_1)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_sort(self):
        column = "test_column"
        test_data = pandas.DataFrame({column: [3, 2, 1, 4, 5],
                                      "species": ["bb", "ba", "ab", "aa",  "bc"]})
        verify_data = pandas.DataFrame({column: [1, 2, 3, 4, 5],
                                        "species": ["ab", "ba", "bb", "aa", "bc"]}, index=[2, 1, 0, 3, 4])
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)

        visitor = Sort("column", column)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

        test_data = pandas.DataFrame({column: [3, 2, 1, 4, 5],
                                      "species": ["bb", "ba", "ab", "aa",  "bc"]}, index=[3, 4, 2, 1, 0])
        verify_data = pandas.DataFrame({column: [5, 4, 1, 3, 2],
                                        "species": ["bc", "aa", "ab", "bb", "ba"]}, index=[0, 1, 2, 3, 4])
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)

        visitor = Sort("index")
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_split(self):
        column = "test_column"
        ids = {"a": 0.2, "b": 0.4, "c": 0.4}
        test_data = pandas.DataFrame({column: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]})
        verify_data_0 = pandas.DataFrame({column: [0, 1]}, index=[0, 1])
        verify_data_1 = pandas.DataFrame({column: [2, 3, 4, 5]}, index=[2, 3, 4, 5])
        verify_data_2 = pandas.DataFrame({column: [6, 7, 8, 9]}, index=[6, 7, 8, 9])
        test_featureset = FeatureSet()
        verify_featureset_0 = FeatureSet()
        verify_featureset_1 = FeatureSet()
        verify_featureset_2 = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset_0.set_featureset(verify_data_0)
        verify_featureset_1.set_featureset(verify_data_1)
        verify_featureset_2.set_featureset(verify_data_2)

        visitor = Split(ids, "sequential")
        featuresets = visitor.visit(test_featureset)
        test.assert_frame_equal(featuresets["a"], verify_featureset_0.get_featureset())
        test.assert_frame_equal(featuresets["b"], verify_featureset_1.get_featureset())
        test.assert_frame_equal(featuresets["c"], verify_featureset_2.get_featureset())



if __name__ == '__main__':
    unittest.main()