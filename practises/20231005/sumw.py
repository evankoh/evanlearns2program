#Calculate the sum of all numbers from 1 to a given number using while loop.

x=int(input("Input a number:"))
#y=x+1
z=0

counter=0

while counter<x:
    counter+=1
    z+=counter
    #print(z)

print(z)
