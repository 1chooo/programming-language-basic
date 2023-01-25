import math

c = 246886422468.0000
d = 13579.0000

def formula(c, d) :
    return math.sqrt((c ** 2 + d) - c)


ans = formula(c, d)
print("%.4f" %(ans))

# Through the digit divert
ans = 1000 * ans / 1000
print("%.4f" %(ans))