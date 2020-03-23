import unittest
import pandas
import pandas.testing as test
import os
from FeatureSetElement import FeatureSet
from visitors.NaturalLanguageProcessing.NaturalLanguageVisitor import LowerCase, UpperCase, JoinOperation, Tokenizer, \
    Stemmer, RemoveChar, RemovePunctuation, Lemmatizer, NGram, CountSyllable

from visitors.NaturalLanguageProcessing.TextToNumericValue.RepresentByWordlist import RepresentByWordlist


class TestNaturalLanguage(unittest.TestCase):

    def test_lowercase(self):
        column = "test_column"
        test_data = pandas.DataFrame({column: ["TestString", "TESTSTRING", "teststring", "TestString0!"]})
        verify_data = pandas.DataFrame({column: ["teststring", "teststring", "teststring", "teststring0!"]})
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = LowerCase(column)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_uppercase(self):
        column = "test_column"
        test_data = pandas.DataFrame({column: ["TestString", "TESTSTRING", "teststring", "TestString0!"]})
        verify_data = pandas.DataFrame({column: ["TESTSTRING", "TESTSTRING", "TESTSTRING", "TESTSTRING0!"]})
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = UpperCase(column)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_join(self):
        column = "test_column"
        join_string = "!wow!"
        test_data = pandas.DataFrame({column: ["TestString", ["Test", "String"], ""]})
        verify_data = pandas.DataFrame({column: ["T!wow!e!wow!s!wow!t!wow!S!wow!t!wow!r!wow!i!wow!n!wow!g",
                                                 "Test!wow!String", ""]})
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = JoinOperation(column, join_string)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_tokenizer(self):
        column = "test_column"
        test_data = pandas.DataFrame({column: ["Test String", "anothertest string",  "Another test string", "test"]})
        verify_data = pandas.DataFrame({column: [["Test", "String"], ["anothertest", "string"],
                                                 ["Another", "test", "string"], ["test"]]})
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = Tokenizer(column)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_stem(self):
        column = "test_column"
        test_data = pandas.DataFrame({column: ["maximum","presumably","multiply", "provision"]})
        verify_data = pandas.DataFrame({column: ["maxim","presum","multiply", "provid"]})
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = Stemmer(column)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_lemmatize(self):
        column = "test_column"
        test_data = pandas.DataFrame({column: ["dogs","churches","aardwolves", "abaci"]})
        verify_data = pandas.DataFrame({column: ["dogs","churches","aardwolves", "abaci"]})
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = Lemmatizer(column)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_removechar(self):
        column = "test_column"
        char = "s"
        test_data = pandas.DataFrame({column: ["TestString", "super", "wow"]})
        verify_data = pandas.DataFrame({column: ["TetString", "uper", "wow"]})
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = RemoveChar(column, char)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_removepunct(self):
        column = "test_column"
        test_data = pandas.DataFrame({column: ["Test:String","Test.St.ri.ng","Tes,t:String", "TestSt::ring!"]})
        verify_data = pandas.DataFrame({column: ["TestString","TestString","TestString", "TestString"]})
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = RemovePunctuation(column)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_ngram(self):
        column = "test_column"
        n_gram_value = 3
        test_data = pandas.DataFrame({column: ["12345"]})
        verify_data = pandas.DataFrame({column: [[("1", "2", "3"), ("2", "3", "4"), ("3", "4", "5")]]})
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = NGram(column, n_gram_value)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_represent(self):
        column = "test_column"
        wordlist_0 = "Hallo"
        wordlist_1 = ["Hi", "Ok"]
        __location__ = os.path.realpath(
            os.path.join(os.getcwd(), os.path.dirname(__file__)))
        wordlist_2 = os.path.join(__location__, "phrases.txt")
        mode_0 = "presence"
        mode_1 = "count"
        frompath = True
        test_data = pandas.DataFrame({column: ["Hallo hey was geht ab", "Hallo Hallo hallo", "hallo"]})
        verify_data = pandas.DataFrame({column: [[("1", "2", "3"), ("2", "3", "4"), ("3", "4", "5")]]})
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()

        test_data = pandas.DataFrame({column: ["Hallo hey was geht ab", "Hallo Hallo hallo", "hallo"]})
        verify_data = pandas.DataFrame({column:
                                            ["Hallo hey was geht ab", "Hallo Hallo hallo", "hallo"],
                                        str(wordlist_0+"_"+column+"_presence"):
                                            [1, 1, 0]})
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = RepresentByWordlist(column, wordlist_0, mode_0)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

        test_data = pandas.DataFrame({column: ["Hallo hey was geht ab Hi Ok", "Hallo Ok Hallo hallo", "hi Hi Hi hallo"]})
        verify_data = pandas.DataFrame({column:
                                            ["Hallo hey was geht ab Hi Ok", "Hallo Ok Hallo hallo", "hi Hi Hi hallo"],
                                        str(wordlist_1[0] + "_" + column + "_count"):
                                            [1, 0, 2],
                                        str(wordlist_1[1] + "_" + column + "_count"):
                                            [1, 1, 0]
                                        })
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = RepresentByWordlist(column, wordlist_1, mode_1)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

        test_data = pandas.DataFrame({column: ["Hallo hey was geht ab", "Hallo Hallo hallo", "hallo"]})
        verify_data = pandas.DataFrame({column:
                                            ["Hallo hey was geht ab", "Hallo Hallo hallo", "hallo"],
                                        str(wordlist_0 + "_" + column + "_count"):
                                            [1, 2, 0]})
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = RepresentByWordlist(column, wordlist_0, mode_1)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())


        "Load from Path"
        test_data = pandas.DataFrame({column: ["Hallo hey was geht ab", "Hallo Hallo hallo", "hallo"]})
        verify_data = pandas.DataFrame({column:
                                            ["Hallo hey was geht ab", "Hallo Hallo hallo", "hallo"],
                                        str("Hallo_" + column + "_presence"):
                                            [1, 1, 0],
                                        str("was geht_" + column + "_presence"):
                                            [1, 0, 0]
                                        })
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = RepresentByWordlist(column, wordlist_2, mode_0, frompath)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())

    def test_count_syll(self):
        column = "test_column"
        test_data = pandas.DataFrame({column: ["wdp", "tree tree", "buh"]})
        verify_data = pandas.DataFrame({column: [0, 4, 1]})
        test_featureset = FeatureSet()
        verify_featureset = FeatureSet()
        test_featureset.set_featureset(test_data)
        verify_featureset.set_featureset(verify_data)
        visitor = CountSyllable(column)
        visitor.visit(test_featureset)
        test.assert_frame_equal(test_featureset.get_featureset(), verify_featureset.get_featureset())


if __name__ == '__main__':
    unittest.main()