#Write a program that appends the square of each number to a new list (for loop)

x=[2,3,4,5,6,7,8]
y=[]

lenx=len(x)

counter=0

while counter<lenx:
    z=x[counter]
    y.append(z**2)
    counter+=1

print(y)

