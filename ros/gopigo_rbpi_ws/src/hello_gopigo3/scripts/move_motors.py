#!/usr/bin/env python

from easygopigo3 import EasyGoPiGo3
import time

gpg = EasyGoPiGo3()

speed = 400
seconds = 2

gpg.set_speed(speed)

gpg.forward()
time.sleep(seconds)
gpg.stop()