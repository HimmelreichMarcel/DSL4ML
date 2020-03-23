import pandas as pd
import numpy as np
import sklearn.preprocessing as p

#encoder = p.LabelBinarizer()

#valid = [1, 1, 2]
#frame = pd.DataFrame({"test": [0, 1, 2, 3]})
#split = [0.2, 0.4, 0.4]

#matrix = np.matrix([[1,  0,  0, 33], [0,  1,  0, 12], [0,  0,  1, 18]])
#print(matrix)
#frame["matrix"] = matrix
#exec("test = frame['test']")
#print(eval("frame['test']"))
#print(type(eval("frame['test']")))

#test_values = eval("encoder.fit_transform(frame['test'])")
#test_values = encoder.transform(frame['test'])
#print(test_values)
#frame = frame.apply(eval("encoder.fit_transform(frame['test'])"), axis=0)
#frame.head(10)

#print(frame)

stack = np.array([[1., 1., 1., 1., 1.], [0., 0., 0., 0., 0.], [1., 1., 1., 1., 1.]])
frame = pd.DataFrame()
"""
for row in stack:
    print(row)
    row = row.reshape(-1, len(row))
    row_frame = pd.DataFrame(row)
    frame = frame.append(row_frame)"""
frame = pd.DataFrame(stack, columns=["a","b","c","d","e"])
print(frame.columns.get_loc("a"))
#print(frame)


"""
i = 0
expr = "frame['test'] == 4"
list = []

def evaluate(number):
    global expr
    if eval(expr):
        list.append(number)
    ++number

frame.apply(evaluate(i))
print(frame)
print(list)
"""