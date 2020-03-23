import unittest
import FeatureSetElement
import visitors.ArithmeticOperationVisitor as aov
import pandas as pd


class TestArithmeticOperation(unittest.TestCase):
    def __init__(self):
        pass

    def testSquareRoot(self):
        test_dataset = FeatureSetElement.FeatureSet()
        test_dataset._dataset = None
        visitor = aov.SquareRootOperation("second")
        verify_dataset = None
        self.assertEqual(visitor.visit(test_dataset), verify_dataset)

