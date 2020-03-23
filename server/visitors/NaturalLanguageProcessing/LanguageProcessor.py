from nltk import word_tokenize
from sklearn.feature_extraction import stop_words
from visitors.NaturalLanguageProcessing.NaturalLanguageVisitor import NaturalLanguageVisitor

from sklearn.feature_extraction.text import CountVectorizer, TfidfVectorizer
from sklearn.feature_extraction import stop_words
from nltk.stem import WordNetLemmatizer
from nltk.corpus import wordnet, stopwords
from nltk import ne_chunk, pos_tag, word_tokenize
from Utility import Utility as util


class LanguageProcessor:
    def __init__(self):
        self._tokenizer = word_tokenize
        self._stopwords = stop_words.ENGLISH_STOP_WORDS
        self._locale = None

    def get_tokenizer(self):
        return self._tokenizer

    def get_stopwords(self):
        return self._stopwords

    def get_locale(self):
        return self._locale


class POSTokenizer(object):
    def __init__(self, processor):
        self.lp = processor

    def __call__(self, article):
        # tokenize article
        tokenizer = self.lp.get_tokenizer()

        # lemmatize article
        pos_article = pos_tag(tokenizer(article))

        return [item[1] for item in pos_article]


class LemmaTokenizer(object):
    def __init__(self, processor):
        self.lp = processor
        self.wnl = WordNetLemmatizer()

    def __call__(self, article):
        # tokenize article
        tokenizer = self.lp.get_tokenizer()

        # lemmatize article
        pos_article = pos_tag(tokenizer(article))
        lem_article = [self.wnl.lemmatize(pair[0], self.get_wordnet_pos(pair[1])) for pair in pos_article]

        # lemmatize stopwords
        pos_stopwords = pos_tag(self.lp.get_stopwords())
        lem_stopwords = [self.wnl.lemmatize(pair[0], self.get_wordnet_pos(pair[1])) for pair in pos_stopwords]

        return [item for item in lem_article if item not in lem_stopwords]

    def get_wordnet_pos(self, treebank_tag):
        if treebank_tag.startswith('J'):
            return wordnet.ADJ
        elif treebank_tag.startswith('V'):
            return wordnet.VERB
        elif treebank_tag.startswith('N'):
            return wordnet.NOUN
        elif treebank_tag.startswith('R'):
            return wordnet.ADV
        else:
            return wordnet.NOUN


class NamedEntityTokenizer(object):
    def __init__(self, processor, detailed=False):
        self.lp = processor
        self._detailed = detailed

    def __call__(self, article):
        # tokenize article
        tokenizer = self.lp.get_tokenizer()

        # lemmatize article
        pos_tagged_tokens = pos_tag(tokenizer(article))

        named_entities = []
        if self._detailed:
            ne_tree = ne_chunk(pos_tagged_tokens, binary=False)
            for sub in ne_tree.subtrees():
                if sub.label() != "S":
                    named_entities.append(sub.label())
        else:
            ne_tree = ne_chunk(pos_tagged_tokens, binary=True)
            for sub in ne_tree.subtrees():
                if sub.label() == "NE":
                    named_entities.append(self.get_simple_name(sub))

        return named_entities

    def get_simple_name(self, subtree):
        return " ".join([item[0] for item in list(subtree)])


class WordlistEntryTokenizer(object):
    def __init__(self, processor, wordlist):
        self.lp = processor
        self._wordlist = list()
        self._simple_words = True

        self.load_wordlist(wordlist)

    def load_wordlist(self, wordlist):
        with open(wordlist) as file:
            for line in file:
                term = line.rstrip('\n')
                self._wordlist.append(term)

                if " " in term.strip():
                    self._simple_words = False

    def tokenize_wordlist(self, wordlist):
        article = " ".join(self._wordlist)
        tokenize = self.lp.get_tokenizer()
        self._wordlist = tokenize(article)

    def __call__(self, article):
        if self._simple_words:
            tokenize = self.lp.get_tokenizer()
            article = " ".join(tokenize(article))

        # TODO: this does not retain the order of words in the article which leads to erroneous n-grams
        tokenlist = list()
        for item in self._wordlist:
            for _ in range(article.count(item)):
                tokenlist.append(item)

        if len(tokenlist) is not 0:
            util.print_warning(tokenlist)

        return tokenlist


class LanguageProcessorVisitor(NaturalLanguageVisitor):
    def __init__(self, column=None, extraction_target="word", extraction_type="bow", measure=None, ngram=None):
        self._column = column
        self._extraction_target = extraction_target
        self._extraction_type = extraction_type
        self._ngram = ngram
        self._measure = measure
        self._max_features = 100
        "Measure: tfidf, presence, count"

    def visit(self, featureset):
        try:
            # TODO: outsource into method "set_tokenizer" (tokenizer as member - no extraction_target required then)
            tokenizer = None
            if self._extraction_target == "word":
                tokenizer = LemmaTokenizer(LanguageProcessor())
            elif self._extraction_target == "pos":
                tokenizer = POSTokenizer(LanguageProcessor())
            elif self._extraction_target == "ne_simple":
                tokenizer = NamedEntityTokenizer(LanguageProcessor())
            elif self._extraction_target == "ne_detailed":
                tokenizer = NamedEntityTokenizer(LanguageProcessor(), detailed=True)
            elif self._extraction_target.startswith("wordlist"):
                path = self._extraction_target.split("_")[1]
                tokenizer = WordlistEntryTokenizer(LanguageProcessor(), wordlist=path)

            # TODO: outsource into method "set_vectorizer" (vectorizer as member - no measure required then)
            print(self._ngram)
            print(self._column)
            vectorizer = None
            binary = self._measure == "presence" or self._extraction_type == "presence"
            if self._ngram is None:
                if self._measure == "tfidf":
                    vectorizer = TfidfVectorizer(tokenizer=tokenizer)
                else:
                    vectorizer = CountVectorizer(tokenizer=tokenizer, binary=binary)
            else:
                if self._measure == "tfidf":
                    vectorizer = TfidfVectorizer(tokenizer=tokenizer, ngram_range=self._ngram)
                else:
                    vectorizer = CountVectorizer(tokenizer=tokenizer, ngram_range=self._ngram, binary=binary)
            temp_column = featureset.get_featureset()[self._column]
            temp_column = temp_column.values

            new_column = []
            "Note: Presence and Count for every(einzeln) feature or for all(alle) feature"
            if self._extraction_type == "bow" or self._extraction_type == "ngram":
                # Return Matrix
                new_column = list(vectorizer.fit_transform(temp_column).toarray())
            elif self._extraction_type == "list":
                # Return String Array
                analyzer = vectorizer.build_tokenizer()
                for row in temp_column:
                    print(row)
                    print(analyzer(row))
                    new_column.append(analyzer(row))
            elif self._extraction_type == "presence":
                # Return Numeric Array
                analyzer = vectorizer.build_tokenizer()
                for row in temp_column:
                    new_column.append(1 if len(analyzer(row)) > 0 else 0)
                    # new_column.append(len(analyzer(row)) > 0)
            elif self._extraction_type == "count":
                # Return Numeric Array
                analyzer = vectorizer.build_tokenizer()
                for row in temp_column:
                    new_column.append(len(analyzer(row)))
            return new_column
        except Exception as error:
            util.print_error("Failed to use Language Processor " + str(error))
            util.print_detailed_error()

