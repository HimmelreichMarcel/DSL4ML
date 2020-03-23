from TestClient import TestClient as testclient


def main():
    client = testclient("localhost", 7070)
    client.connect()


    client.send_message("create featureset 897563740373164874 D:\Bitbucket\data\instances.jsonl")
    client.send_message("create featureset 197563740373164871 D:\Bitbucket\data\\truth.jsonl")
    client.send_message("featureset 897563740373164874 get head")
    client.send_message("featureset 197563740373164871 get head")

    client.send_message("featureset 897563740373164874 remove id postTimestamp targetCaptions targetDescription targetParagraphs postMedia")

    #client.send_message("featureset 897563740373164874 remove targetKeywords")

    client.send_message("featureset 197563740373164871 remove id truthJudgments truthMean truthMedian truthMode")

    client.send_message("featureset 197563740373164871 conditionDrop featureset.index>10")
    client.send_message("featureset 897563740373164874 conditionDrop featureset.index>10")

    #client.send_message("featureset 897563740373164874 split sequential new 0.5 new1 0.5")
    client.send_message("featureset 897563740373164874 replace postText useNLP join")

    client.send_message("featureset 897563740373164874 replace postText useNLP extract postText pos bow presence")
    #client.send_message("featureset 897563740373164874 replace targetParagraphs useNLP extract ne_simple ngram count")
    client.send_message("featureset 897563740373164874 replace targetKeywords useNLP extract targetKeywords ne_simple bow count")
    client.send_message("featureset 897563740373164874 replace targetTitle useNLP extract targetTitle pos presence")

    #client.send_message("featureset 197563740373164871 replace targetTitle usePreprocessing normalize")

    #client.send_message("featureset 897563740373164874 edit usePreprocessing normalize")
    client.send_message("featureset 197563740373164871 replace truthClass usePreprocessing labelEncode")
    client.send_message("featureset 897563740373164874 replace postText usePreprocessing standardize targetTitle")

    client.send_message("featureset 897563740373164874 add truthClass fromFeatureset 197563740373164871 useCopy truthClass")
    client.send_message("featureset 897563740373164874 get head")
    #client.send_message("featureset 897563740373164874 group group_column postText targetTitle")
    #client.send_message("featureset 897563740373164874 get head")

    """
    client.send_message("featureset 897563740373164874 add truthClass fromFeatureset 197563740373164871 useCopy truthClass")
    client.send_message("featureset 897563740373164874 setTruth truthClass")
    client.send_message("featureset 897563740373164874 mask feature<1 postText")
    client.send_message("featureset 897563740373164874 get head")
    client.send_message("featureset 897563740373164874 expand postText")
    client.send_message("featureset 897563740373164874 get head")




    
    client.send_message("featureset 897563740373164874 add truthClass fromFeatureset 197563740373164871 useCopy truthClass")
    client.send_message("featureset 897563740373164874 setTruth truthClass")
    client.send_message("featureset 897563740373164874 split sequential xtrain 0.9 xtest 0.1")


    #client.send_message("featureset 897563740373164874 add targetKeywords000 fromFeatureset targetKeywords 897563740373164874 useNLP extract word ngram count 1 2")
    client.send_message("featureset 897563740373164874 get head")
    client.send_message("featureset 197563740373164871 get head")
    client.send_message("create model testmodel")
    client.send_message("model testmodel addTrainData fromFeatureset xtrain")
    client.send_message("model testmodel addTestData fromFeatureset xtest")
    client.send_message("model testmodel crossValidate svc 5")
    client.send_message("model testmodel findEstimator classification 1 lc")
    ''' model <id> addData fromFeatureset <featuresetID> <truth_bool>'''
    """





    """
    
    client.send_message("create featureset 897563740373164874 D:\Bitbucket\data\iris.json")

    client.send_message("featureset 897563740373164874 setTruth species")
    client.send_message("featureset 897563740373164874 replace species usePreprocessing labelEncode")
    client.send_message("featureset 897563740373164874 replace species usePreprocessing standardize")
    # client.send_message("featureset 897563740373164874 split sequential xtrain 0.9 xtest 0.1")
    client.send_message("create model testmodel")
    client.send_message("model testmodel addTrainData fromFeatureset xtrain")
    # client.send_message("model testmodel addTestData fromFeatureset xtest")

    # client.send_message("model testmodel crossValidate svc 5")
    client.send_message("model testmodel findEstimator classification 1 lc")
    
    
    
    
    
    client.send_message("featureset 897563740373164874 group group_column 0 targetTitle truthClass")
    client.send_message("featureset 897563740373164874 expand postText")
    client.send_message("featureset 897563740373164874 get head")
    
    
    client.send_message("featureset 897563740373164874 setindex id")
    client.send_message("featureset 197563740373164871 setindex id")
    client.send_message("featureset 897563740373164874 joinwith 197563740373164871")
    client.send_message("featureset 197563740373164871 get Meta")
    client.send_message("featureset 897563740373164874 get Meta")
    client.send_message("featureset 897563740373164874 condense species False ")
    client.send_message("featureset 897563740373164874 get Meta")
    """
    #client.send_message("create model trainer")
    #client.send_message("model trainer adddata fromfeatureset instances")
    #client.send_message("model trainer findestimator classification 1")


if __name__ == "__main__":
    main()