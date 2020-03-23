# -*- coding: utf-8 -*-
"""
Created on Thu Oct 12 13:35:02 2017

@author: Marcel
"""
import nltk
from nltk import word_tokenize
from nltk.tokenize import TweetTokenizer
from nltk.corpus import stopwords
from visitors.Visitor import Visitor as v
import string
import re

tnkzr = TweetTokenizer()
stopwords = stopwords.words('english')
english_vocab = set(w.lower() for w in nltk.corpus.words.words())


class TokenVisitor(v):
    def visit(self, data):
        pass


class TokenizeVisitor(TokenVisitor):
    def __init(self, column):
        self._column = column

    def visit(self, data):
        try:
            # Data._dataset["tokenText"] = Data._dataset["postText"].apply(tnkzr.tokenize)

            df_tokens = data._dataset.apply(lambda row: self.tokenize(row[self._column]), axis=1)
            print("Column tokenized")
            print(df_tokens.head(5))
            return df_tokens
            # Data._dataset.update(df_tokens[[self._column]])
        except Exception as n:
            print(n)
            print("Unable to tokenize Text")

    def clean(self):
        return 0

    def tokenize(self, text):
        text = re.sub(r'\$[a-zA-Z0-9]', '', text)  # Remove tickers
        # text = re.sub(r'\#[a-zA-Z0-9]','',text) #Remove hashtag
        # text = re.sub(r'\@[a-zA-Z0-9]','',text) #Remove citations
        text = re.sub(r'https?:\/\/.*\/[a-zA-Z0-9]', '', text)  # Remove Hyperlinks
        text = re.sub(r'[0-9]*', '', text)  # Remove numbers
        text = text.translate(str.maketrans("", "", string.punctuation))  # Remove punctuations like 's
        text = word_tokenize(text)
        # tnkzr = TweetTokenizer(strip_handles=True,reduce_len=True)
        # tokens = tnkzr.tokenize(text)
        # tokens = [i.lower() for i in tokens]    #Make all lowercase
        # print(tokens)
        return text
    # Erzeugt tokens aus Text


"""    def tokenize(self, text, remove_non_alphanum=True,lowercase=False,length=27, fill_na_token='unk'):
        def strip_non_alphanum(token):
            return re.sub(r'\W+', '' , token)            
        if lowercase:
            text.lower()
        tokens = tnkzr.tokenize(text)
        if remove_non_alphanum:
            tokens= [strip_non_alphanum(t) for t in tokens]
        tokens = list(filter(None,tokens))
        if len(tokens) < length:
            tokens.extend([fill_na_token]*(length-len(tokens)))
        return tokens[:length]
"""


class NGramTokenizeVisitor(TokenVisitor):
    def visit(self, data):
        text = self._p1
        try:
            self.ngram_tokenize(text)
        except:
            print("Unable to Create Word NGrams")

    # Erzeugt Wort NGramme aus Text
    def ngram_tokenize(self, text):
        return [token for token in tnkzr.tokenize(text) if token not in [',', '.', '!', '?']]


class PosTokenizeVisitor(TokenVisitor):
    def visit(self, data):
        text = self._p1
        try:
            self.pos_tokenize(text)
        except:
            print("Unable to create Tokens with string punctuation")

    # Erzeugt Token ohne Punkte, Kommata etc.
    def pos_tokenize(self, text):
        punctuation = string.punctuation
        token_list = [[token] for token in tnkzr.tokenize(text) if token not in punctuation]
        return token_list
