# https://www.codewars.com/kata/5b18e9e06aefb52e1d0001e9/train/python

def riders(stations):
    riders = 1
    riders_dist = 0
    for i in stations:
        riders_dist += i
        if riders_dist >= 100:
            riders += 1
            riders_dist = i
    return riders