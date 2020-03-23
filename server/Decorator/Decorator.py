from Decorator.Component import Component
import abc


class Decorator(Component, metaclass=abc.ABCMeta):
    """
    Maintain a reference to a Component object and define an interface
    that conforms to Component's interface.
    """
    def __init__(self, component):
        self._component = component

    def get_component(self):
        return self._component

    @abc.abstractmethod
    def operation(self):
        pass