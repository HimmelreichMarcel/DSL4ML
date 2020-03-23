from Decorator.Decorator import Decorator
from visitors.FeatureSetVisitor import *


class LoadDecorator(Decorator):
    """
    Add responsibilities to the component.
    """
    def __init__(self, featureset, path=None, orient=None, index=None):
        super(LoadDecorator, self).__init__(featureset)
        self._path = path
        self._orient = orient
        self._index = index

    def operation(self):
        self._component.operation()
        load = LoadFeatureSetVisitor(self._path, self._orient, self._index)
        load.visit(self._component.get_featureset())

        history = "Loading Featureset"
        self._component.add_history(history)


class AddFeatureDecorator(Decorator):
    """
    Add responsibilities to the component.
    """
    def __init__(self, featureset, column, feature):
        super(AddFeatureDecorator, self).__init__(featureset)
        self._feature = feature
        self._column = column

    def operation(self):
        self._component.operation()
        add_feature = AddFeature(self._column, self._feature)
        add_feature.visit(self._component.get_featureset())


class EditInstancesDecorator(Decorator):
    def __init__(self, featureset, column, condition, expression):
        super(EditInstancesDecorator, self).__init__(featureset)
        self._column = column
        self._condition = condition
        self._expression = expression

    def operation(self):
        self._component.operation()
        editor = EditInstances(self._column, self._condition, self._expression)
        editor.visit(self._component.get_featureset())


class RemoveFeatureDecorator(Decorator):
    """
    Add responsibilities to the component.
    """
    def __init__(self, featureset, column):
        super(RemoveFeatureDecorator, self).__init__(featureset)
        self._column = column

    def operation(self):
        self._component.operation()
        remove_feature = RemoveFeature(self._column)
        remove_feature.visit(self._component.get_featureset())


class SetIndexDecorator(Decorator):
    """
    Add responsibilities to the component.
    """
    def __init__(self, featureset, feature, bool_value=False):
        super(SetIndexDecorator, self).__init__(featureset)
        self._feature = feature
        self._bool_value = bool_value

    def operation(self):
        self._component.operation()

        index = SetIndex(self._feature, self._bool_value)
        index.visit(self._component.get_featureset())

