#!/bin/python
import sys
import numpy as np

n = int(sys.argv[1])
m = int(sys.argv[1])

x = np.random.randint(-999999, 999999, size=(n,m))  
#x = np.random.randint(100, 999, n)  
np.savetxt('tmp', x, fmt='%d', delimiter=' ')  