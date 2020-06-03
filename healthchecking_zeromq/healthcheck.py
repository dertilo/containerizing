import sys
from time import time

import zmq

context = zmq.Context()

socket = context.socket(zmq.SUB)
socket.connect("tcp://localhost:5555")
socket.setsockopt(zmq.SUBSCRIBE, b"")

t=time()
num = 10
for k in range(num):
    message = socket.recv()

dt = time()-t
rate = num / dt

if rate <1:
    exit(0)
else:
    exit(1)

