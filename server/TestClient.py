import socket
from Utility import Utility as util


class TestClient():
    def __init__(self, ip, port):
        self._host = ip
        self._port = port
        self._client_socket = None

    def connect(self):
        try:
            self._client_socket = socket.socket()
            self._client_socket.connect((self._host, self._port))
        except Exception as error:
            util.print_error("Unable to connect to Server")
            util.print_error(error)

    def send_message(self, message):
        try:
            self.connect()
            message = message.encode()
            self._client_socket.send(message)
            data = self._client_socket.recv(1024).decode()
            print("Received: " + data)
            self._client_socket.close()
            return data
        except Exception as error:
            util.print_error("Unable to send message to Server")
            util.print_error(error)

    def close(self):
        try:
            self._client_socket.close()
        except Exception as error:
            util.print_error("Unable to close Client")
            util.print_error(error)