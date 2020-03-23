from Decorator.Decorator import Decorator
from visitors.PreprocessVisitor import *


class LabelBinarizeDecorator(Decorator):

    def __init__(self, featureset, column=None):
        super(LabelBinarizeDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        visitor = LabelBinarize(self._column)
        visitor.visit(self._component.get_featureset())
        history = "Preprocessing: Label Binarization"
        self._component.add_history(history)


class LabelEncoderDecorator(Decorator):

    def __init__(self, featureset, column=None):
        super(LabelEncoderDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        visitor = LabelEncoder(self._column)
        return visitor.visit(self._component.get_featureset())
        history = "Preprocessing: Label Encoding"
        print(history)
        self._component.add_history(history)


class OneHotEncoderDecorator(Decorator):

    def __init__(self, featureset, column=None):
        super(OneHotEncoderDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        visitor = OneHotEncoder(self._column)
        visitor.visit(self._component.get_featureset())
        history = "Preprocessing: One Hot Encoding"
        self._component.add_history(history)


class PCADecorator(Decorator):

    def __init__(self, featureset, column=None, n=2):
        super(PCADecorator, self).__init__(featureset)
        self._column = column
        self._number = n

    def operation(self):
        self._component.operation()
        visitor = PCA_V(self._column, self._number)
        visitor.visit(self._component.get_featureset())
        history = "Preprocessing: PCA"
        self._component.add_history(history)


class ImputerDecorator(Decorator):

    def __init__(self, featureset, column=None, strategy="mean"):
        super(ImputerDecorator, self).__init__(featureset)
        self._column = column
        self._strategy = strategy

    def operation(self):
        self._component.operation()
        visitor = Imputer(self._column, self._strategy)
        visitor.visit(self._component.get_featureset())
        history = "Preprocessing: Imputer"
        self._component.add_history(history)


class StandardizationDecorator(Decorator):

    def __init__(self, featureset, column=None, group=False):
        super(StandardizationDecorator, self).__init__(featureset)
        self._column = column
        self._group = group

    def operation(self):
        self._component.operation()
        visitor = Standardization(self._column, self._group)
        visitor.visit(self._component.get_featureset())
        history = "Preprocessing: Standardization"
        self._component.add_history(history)


class NormalizerDecorator(Decorator):

    def __init__(self, featureset, column=None):
        super(NormalizerDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        visitor = Normalizer(self._column)
        visitor.visit(self._component.get_featureset())
        history = "Preprocessing: Normalization"
        self._component.add_history(history)


class BinarizerDecorator(Decorator):

    def __init__(self, featureset, column=None):
        super(BinarizerDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        visitor = Binarizer(self._column)
        visitor.visit(self._component.get_featureset())
        history = "Preprocessing: Binarization"
        self._component.add_history(history)


class FillEmptyCellsDecorator(Decorator):

    def __init__(self, featureset, column, feature_type, value):
        super(FillEmptyCellsDecorator, self).__init__(featureset)
        self._column = column
        self._type = feature_type
        self._value = value

    def operation(self):
        visitor = FillEmptyCellsVisitor(self._column, self._type, self._value)
        visitor.visit(self._component.get_featureset())

        history = "Preprocessing: FillEmptyCells"
        self._component.add_history(history)


class CondenseDecorator(Decorator):
    def __init__(self, featureset, column=None, sequential=True, mode="median", index=True):
        super(CondenseDecorator, self).__init__(featureset)
        self._column = column
        self._sequential = sequential
        self._mode = mode
        self._index = index

    def operation(self):
        self._component.operation()
        # visitor = Condense(self._column, self._sequential, self._mode, self._index)
        visitor = CondenseSimple(self._column, self._mode)
        visitor.visit(self._component.get_featureset())
        history = "Preprocessing: Condense"
        self._component.add_history(history)


class SplitTrainTest(Decorator):
    def __init__(self, featureset, ids, truth, test_size=0.2, random=None):
        super(SplitTrainTest, self).__init__(featureset)
        self._ids = ids
        self._truth = truth
        self._test_size = test_size
        self._random = random

    def operation(self):
        self._component.operation()
        visitor = SplitTrainTest(self._truth, self._test_size, self._random)
        train_test = visitor.visit(self._component.get_featureset())
        # TODO Create Featureset with two Dataframes each
