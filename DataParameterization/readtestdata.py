import csv
import random
import pandas as pd


class csvRead:
    def __init__(self, file):
        try:
            file = open(file)
        except FileNotFoundError:
            print("File not found")
        self.file = file
        self.reader = csv.DictReader(file)

    def read(self):
        return random.choice(list(self.reader))


class excelRead:
    def __init__(self, file):
        try:
            file = open(file)
        except FileNotFoundError:
            self.file = file
            self.reader = pd.read_excel(file)
            self.data = self.reader.to_dict('records')

    def reads(self):
        return random.choice(list(self.reader))
