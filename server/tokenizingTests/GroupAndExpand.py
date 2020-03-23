import pandas as pd
import numpy as np


def main():
    df = pd.DataFrame(np.random.randn(6, 4), columns=list('ABCD'))
    df["name"] = ["Carl", "David", "Eugen", "Fred", "Georg", "Harald"]

    df.drop("A", axis=1)

    df = group(df, ['B', 'C', 'D'], "mygraou")
    print(df)
    expand(df, "mygraou")


def group(frame, targets, name):
    # create new column
    new_column = frame[targets].values
    print(new_column)
    frame[name] = list(new_column)

    # get index of new column and insert new column
    columns = list(frame)
    index = columns.index(targets[0])
    columns.insert(index, name)
    columns.pop()

    print(columns)

    frame = frame.reindex(columns, axis=1)

    # drop old columns
    frame = frame.drop(columns=targets, axis=1)

    return frame


def expand(frame, target):
    matrix = frame[target]

    # get column names
    columns = []
    for i in range(len(matrix.iloc[0])):
        columns.append(target + "_" + str(i))

    # create dataframe from matrix
    matrix_df = pd.DataFrame(columns=columns)
    for index, col in enumerate(matrix):
        temp_frame = pd.DataFrame(np.array(col), index=columns)
        matrix_df = pd.concat([matrix_df, temp_frame.T], ignore_index=True)

    # create combined index
    frame_columns = list(frame)
    index = frame_columns.index(target)
    for column in reversed(columns):
        frame_columns.insert(index, column)
    frame_columns.remove(target)

    # concat dataframes and reindex
    frame = pd.concat([frame, matrix_df], axis=1)
    frame = frame.reindex(columns=frame_columns)

    print(frame)


if __name__ == "__main__":
    main()
