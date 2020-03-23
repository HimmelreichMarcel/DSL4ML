# -*- coding: utf-8 -*-
"""
Created on July 05 2017
@author: Aaron Solbach, Marcel Himmelreich
"""
import Main
import threading


class Task():
    def __init__(self):
        self._task = []
        print()

    def createTask(self):
        print()

    def deleteTask(self):
        print()

    def runTask(self):
        print()



'''
class Task(threading.Thread):
    """Server used to receive requests from the machine learning DSL."""

    def __init__(self, connection, request, handler):
        threading.Thread.__init__(self)
        self._connection = connection
        self._request = request.decode("utf-8")
        self._datahandler = handler

    def evaluateRequest(self):
        """Parses the request string to extract the actual task."""
        data = self._datahandler.evaluate(self._request)
        if data:
            self._send(data)

    def run(self):
        """Runs the task on its own thread."""
        if "filepath" in self._request:
            Main.loadFile(str(self._parameter))

        response = "Done: " + self._request
        self._connection.send(self._response.encode("utf-8"))
        self._connection.send(response.encode("utf-8"))
        self._connection.close()

    def send(self, data):
        """ Sends Data to Client """
        self._connection.send(data.encode("utf-8"))
'''