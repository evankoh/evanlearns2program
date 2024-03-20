#Write a function to find the largest item from a given list
#x=[4,6,8,24,12,2]
#Expected output=24

def big(y):
    high=0
    for i in y:
        if i>=high:
            high=i
    return high

x=[4,6,8,24,12,2]
print(big(x))
