#How to print a list of 20 numbers from 1-50.
#Given a 20 numbers, identify the biggest and smallest numbers.
#Pseudo code: use while loop to loop through all the numbers and compare between each of the numbers.

import random

front=0
back=50
number=20

lst=[1]
y=[]
z=1

big=0
small=big
counter=0

while len(y)<number:
    x=random.randint(front,back)
    check=y.count(x)
    counter+=1
    if check==0:
        y.append(x)
        if counter==1:
            small=x
        if x>big:
            big=x
        elif small>x:
            small=x
        #print('big is',big)
        #print('small is',small)
    if len(y)<number:
        z+=1
        lst.append(z)

print(y,big,small,sep='\n')
print("total number in list is",len(y))
