import abc


class Component(metaclass=abc.ABCMeta):
    """
    Define the interface for objects that can have responsibilities
    added to them dynamically.
    """
    @abc.abstractmethod
    def operation(self):
        pass
