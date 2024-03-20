#WAP to separate positive and negative number from a list (for loop)

x=[23,4,-6,23,-9,21,3,-45,-8]
pos=[]
neg=[]

counter=0

while counter<len(x):
    num=x[counter]
    if num>0:
        pos.append(num)
    elif num<0:
        neg.append(num)
    counter+=1

print(pos)
print(neg)
