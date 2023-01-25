from collections import namedtuple

Stock = namedtuple('Stock',['name','shares','price'])

default_stock = Stock('',0,0.0)

def dict_to_stock(s):
    return default_stock._replace(**s)

print(dict_to_stock({'shares':5}))
print(dict_to_stock({'shares':5,'name':'LALA'}))