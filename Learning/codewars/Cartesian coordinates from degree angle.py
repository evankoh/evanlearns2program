import math

def coordinates(degrees, radius):
    x=radius*(math.cos(math.radians(degrees)))
    y=radius*(math.sin(math.radians(degrees)))
    return (x,y)