from sklearn.feature_extraction.text import CountVectorizer
from sklearn.feature_extraction import stop_words
from nltk.stem import WordNetLemmatizer
from nltk.corpus import wordnet, stopwords
from nltk import ne_chunk, pos_tag, word_tokenize

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
        print(pos_article)
        lem_article = [self.wnl.lemmatize(pair[0], self.get_wordnet_pos(pair[1])) for pair in pos_article]

        # lemmatize stopwords
        pos_stopwords = pos_tag(self.lp.get_stopwords())#
        print(pos_stopwords)
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


class NamedEntitySimpleTokenizer(object):
    def __init__(self, processor):
        self.lp = processor

    def __call__(self, article):
        # tokenize article
        tokenizer = self.lp.get_tokenizer()

        # lemmatize article
        pos_tagged_tokens = pos_tag(tokenizer(article))

        ne_tree = ne_chunk(pos_tagged_tokens, binary=False)
        #print("Tree:")
        #print(ne_tree)
        named_entities = []
        for sub in ne_tree.subtrees():
            if sub.label() != "S":
                named_entities.append(sub.label())
        #print(named_entities)
        return named_entities

    def get_simple_name(self, subtree):
        return " ".join([item[0] for item in list(subtree)])


class NamedEntityDetailedTokenizer(object):
    def __init__(self, processor):
        self.lp = processor

    def __call__(self, article):
        # tokenize article
        tokenizer = self.lp.get_tokenizer()

        # lemmatize article
        pos_tagged_tokens = pos_tag(tokenizer(article))

        ne_tree = ne_chunk(pos_tagged_tokens, binary=False)

        named_entities = []
        for sub in ne_tree.subtrees():
            print(sub.label())
            if not sub.label() == 'S':
                named_entities.append(sub.label)

        return named_entities

def main():
    corpus = [
        'These are the first documents I, Corin Goldberg, work at Google.',
        'This is the second second document.',
        'And the third one.',
        'Is this the first document?',
    ]

    vectorizer = CountVectorizer(tokenizer=NamedEntityDetailedTokenizer(LanguageProcessor()))
    analyze = vectorizer.build_tokenizer()

    for cell in corpus:
        print(analyze(cell))


if __name__ == "__main__":
    main()
