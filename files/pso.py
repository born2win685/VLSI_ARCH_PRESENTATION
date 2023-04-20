import os
from PyLTSpice.LTSpiceBatch import SimCommander
from PyLTSpice.LTSteps import LTSpiceLogReader
import numpy as np
import pyswarms as ps
from pyswarms.utils.functions import single_obj as fx


def LTSpice_PSO(W):
    pdp = [100.0]*10
    for i in range(10):
        LTC = SimCommander("proposed.asc")
        LTC.set_parameters(w1=W[i][0], w2=W[i][1], w3=W[i][2], w4=W[i][3], w5=W[i][4], w6=W[i][5], w7=W[i][6], w8=W[i][7], w9=W[i][8], w10=W[i][9])
        LTC.run()
        LTC.wait_completion()
        f = open("proposed.log", "r")
        data = f.read()
        x = data.split("\n")
        for j in range(len(x)):
            if x[j][0:6] == "delay:":
                print(x[j])
                pdp_str = x[j].split("=")
                pdp[i] = float(pdp_str[1])
                break
    return pdp


min_bound = np.ones(10)*90e-9
max_bound = np.ones(10)*240e-9
bounds = (min_bound, max_bound)
options = {'c1': 0.5, 'c2': 0.3, 'w':0.9}
optimizer = ps.single.GlobalBestPSO(n_particles=10, dimensions=10, options=options, bounds=bounds)
cost, pos = optimizer.optimize(LTSpice_PSO, iters=30)
