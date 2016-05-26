from fileinput import *
from PIL import Image
import numpy as np
import math
import sys

file_name = sys.argv[1]

img = Image.open(file_name)
imggray = img.convert('LA')
imgmat = np.array(list(imggray.getdata(band=0)), int)
imgmat = np.array([int(255 - i) for i in imgmat])

f = open("image.txt","w")

for item in imgmat:
	f.write("{0:08b}".format(item)+"\n")

f.close()