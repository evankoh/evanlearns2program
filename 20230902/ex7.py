#WAP to separate positive and negative number from a list.

x=[23,4,-6,23,-9,21,3,-45,-8]
pos=[]
neg=[]

for i in x:
    if i>0:
        pos.append(i)
    elif i<0:
        neg.append(i)

print(pos)
print(neg)