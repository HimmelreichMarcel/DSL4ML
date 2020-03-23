import datetime


class Log:
    def __init__(self):
        self.log = list()
        self.log.append("Command Log")
        self.log.append("##############################")

    def AddLog(self, log):
        try:
            # print("Add Log: " + str(log))
            self.log.append(str(datetime.datetime.now()) + "\t" + str(log))
        except:
            print("Unable to Add Log")

    def GetLog(self):
        try:
            print("Printing Log")
            return self.log
        except:
            print("Unable to print Log")

    def SaveLog(self, filename):
        try:
            with open(filename + ".txt", "w") as output:
                output.write(str(self.log))
                print("Log Saved")
        except:
            print("Unable to save Log")
