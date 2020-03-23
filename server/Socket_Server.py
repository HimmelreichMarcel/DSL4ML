# -*- coding: utf-8 -*-
"""
Created on Wed May 31 16:03:35 2017

@author: Marcel
"""

import socket
import DataManagement as dm


class SocketServer:
    """Server used to receive requests from the machine learning DSL."""

    def __init__(self, host, port):
        self._host = host
        self._port = port
        self._socket = socket.socket()
        self._task = []
        self._threads = []
        self._datahandler = dm.DataManagement(self)

    def start(self):
        """Start the server with provided host and port."""
        try:

            self._socket.bind((self._host, self._port))

            print("Host: " + str(self._host) + " Port: " + str(self._port))
        except socket.error as msg:
            print("Bind failed!")
            print(msg)
            self._socket.close()
            return
        print("Server started!")

    def listen(self):
        """Listen for clients."""
        self._socket.listen()
        while True:
            connection, address = self._socket.accept()
            # connection.setblocking(False)

            print("Client connected from " + str(address))
            request = connection.recv(65536)
            request = request.decode("utf-8")
            request = request.split()
            """ build string for function evaluation"""
            print("Task received: " + " | ".join(request))

            # compute requested task
            print("Computing requested task:")
            answer = self._datahandler.command_evaluation(request)

            # return response
            print("Response to client's request sent to server: " + str(address))
            response = ""
            try:
                for text in answer:
                    response += str(text) + "\n"
                    print(">> " + text)
            except:
                response += str(answer) + "\n"
            response += "---DONE---" + "\n"
            print(">> ---DONE---")

            try:
                # response = response.lower()
                connection.send(response.encode("utf8"))
            except socket.timeout:
                print("CONNECTION ERROR!!!")

            print("________________________________________")

