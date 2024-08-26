#!/bin/python
# data taken from : https://github.com/AtaGowani/daily-motivation

import json
from random import randrange
import os 

dir_path = os.path.dirname(os.path.realpath(__file__))

# read file
with open(dir_path+"/quotes.json", 'r') as myfile:
    data=myfile.read()

# parse file
obj = json.loads(data)

rand = randrange(0,len(obj))
quote = (obj[rand]['quote'])
author = (obj[rand]['author'])
print(quote,"-",author)
