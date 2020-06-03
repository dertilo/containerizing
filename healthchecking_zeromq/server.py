import os
import sys
import time
from itertools import count

import zmq
context = zmq.Context()
socket = context.socket(zmq.PUB)
socket.bind("tcp://*:5555")


for c in count(0):
    dur = float(round(c*0.1)%2==0)
    time.sleep(0.5+dur)
    socket.send(b"OK")
