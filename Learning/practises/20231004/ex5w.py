#Write a program to display the first 7 multiples of 7.

x=int(input("Input number:"))
y=x+1
z=[]

counter=1

while counter<=x:
    z.append(counter*x)
    counter+=1

a=map(str,z)
print(" ".join(a))