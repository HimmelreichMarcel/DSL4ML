from Decorator.Decorator import Decorator
from visitors.NaturalLanguageProcessing.NaturalLanguageVisitor import LowerCase, UpperCase, JoinOperation, Tokenizer, \
    Stemmer, RemoveChar, RemovePunctuation, Lemmatizer, NGram
from visitors.NaturalLanguageProcessing.TextToNumericValue.RepresentByWordlist import RepresentByWordlist
from visitors.NaturalLanguageProcessing.LanguageProcessor import LanguageProcessorVisitor
from visitors.FeatureSetVisitor import MatrixToColumns, AddFeature


class LowercaseDecorator(Decorator):
    def __init__(self, featureset, column=None):
        super(LowercaseDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        visitor = LowerCase(self._column)
        visitor.visit(self._component.get_featureset())
        history = "Natural Language Processing: Lowercase"
        self._component.add_history(history)


class JoinDecorator(Decorator):
    def __init__(self, featureset, column=None, value=""):
        super(JoinDecorator, self).__init__(featureset)
        self._column = column
        self._value = value

    def operation(self):
        self._component.operation()
        visitor = JoinOperation(self._column, self._value)
        visitor.visit(self._component.get_featureset())
        history = "Natural Language Processing: Join Operation " + str(self._value)
        self._component.add_history(history)


class UppercaseDecorator(Decorator):
    def __init__(self, featureset, column=None):
        super(UppercaseDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        visitor = UpperCase(self._column)
        visitor.visit(self._component.get_featureset())
        history = "Natural Language Processing: Uppercase"
        self._component.add_history(history)


class TokenizerDecorator(Decorator):
    def __init__(self, featureset, column=None):
        super(TokenizerDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        visitor = Tokenizer(self._column)
        visitor.visit(self._component.get_featureset())
        history = "Natural Language Processing: Tokenization"
        self._component.add_history(history)


class LemmatizerDecorator(Decorator):
    def __init__(self, featureset, column=None):
        super(LemmatizerDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        visitor = Lemmatizer(self._column)
        visitor.visit(self._component.get_featureset())
        history = "Natural Language Processing: Lemmatizer"
        self._component.add_history(history)


class StemmerDecorator(Decorator):
    def __init__(self, featureset, column=None):
        super(StemmerDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        visitor = Stemmer(self._column)
        visitor.visit(self._component.get_featureset())
        history = "Natural Language Processing: Stemmer"
        self._component.add_history(history)


class RemovePunctuationDecorator(Decorator):
    def __init__(self, featureset, column=None):
        super(RemovePunctuationDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        visitor = RemovePunctuation(self._column)
        visitor.visit(self._component.get_featureset())
        history = "Natural Language Processing: Removing Punctuation"
        self._component.add_history(history)


class RemoveCharacterDecorator(Decorator):
    def __init__(self, featureset, column=None, value=None):
        super(RemoveCharacterDecorator, self).__init__(featureset)
        self._column = column
        self._value = value

    def operation(self):
        self._component.operation()
        visitor = RemoveChar(self._column, self._value)
        visitor.visit(self._component.get_featureset())
        history = "Natural Language Processing: Removing Character " + str(self._value)
        self._component.add_history(history)


class NGramDecorator(Decorator):
    def __init__(self, featureset, column=None, value=None):
        super(NGramDecorator, self).__init__(featureset)
        self._column = column
        self._value = value

    def operation(self):
        self._component.operation()
        visitor = NGram(self._column, self._value)
        visitor.visit(self._component.get_featureset())
        history = "Natural Language Processing: N-Gram Creation " + str(self._value)
        self._component.add_history(history)


class LanguageProcessorDecorator(Decorator):
    def __init__(self, featureset, target_featureset=None, column=None, extraction_target="lemma", extraction_type="bow", measure=None, ngram=None, new_column=None):
        super(LanguageProcessorDecorator, self).__init__(featureset)
        self._target_featureset = target_featureset
        self._column = column
        self._extraction_target = extraction_target
        self._extraction_type = extraction_type
        self._measure = measure
        self._ngram = ngram
        self._new_column = new_column

    def operation(self):
        self._component.operation()
        visitor = LanguageProcessorVisitor(column=self._column, extraction_target=self._extraction_target,
                                           extraction_type=self._extraction_type, measure=self._measure, ngram=self._ngram)
        featureset = self.get_component().get_featureset()
        data = visitor.visit(featureset)

        # TODO: what a the a's for?
        if self._extraction_type == "ngramaa" or self._extraction_type == "bowaaaa":
            "Transform Matrix into Dataframe with Visitor"
            print("Write Matrix into Dataframe")
            if self._new_column is not None:
                column = self._new_column
            else:
                column = self._column
            visitor = MatrixToColumns(data, column)
            visitor.visit(featureset)
        else:
            "Write Column into Dataframe"
            print("Write Column into Dataframe")
            if self._new_column is not None:
                visitor = AddFeature(self._new_column, data)
            else:
                visitor = AddFeature(self._column, data)

            if self._target_featureset:
                visitor.visit(self._target_featureset.get_featureset())
            else:
                visitor.visit(featureset)


