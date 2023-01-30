#!/usr/bin/env python

import glob
import os
import sys

if len(sys.argv) > 1 and sys.argv[1] == "-h":
    files = glob.glob("/home/ivan/.wallpapers/*")
    secfiles = glob.glob("/home/ivan/.wallpapers/*")
else:
    files = glob.glob("/home/ivan/wallpapers/*")
    secfiles = glob.glob("/home/ivan/.secscrwp/*")

currentFile = open("/home/ivan/scripts/.currentwp", "r")
current = [int(currentFile.readline()), int(currentFile.readline())]
currentFile.close()

if current[0] + 1 >= len(files):
    current[0] = 0
else:
    current[0] = current[0] + 1

if current[1] + 1 >= len(secfiles):
    current[1] = 0
else:
    current[1] = current[1] + 1

os.system("feh --no-fehbg --bg-fill \"" + files[current[0]] + "\" \"" + secfiles[current[1]] + "\"")

currentFile = open("/home/ivan/scripts/.currentwp", "w")
currentFile.write(str(current[0]) + "\n" + str(current[1]) + "\n")
currentFile.close()


