#Write a program to display the first 7 multiples of 7.

x=int(input("Input number:"))
y=x+1
z=[]

for i in range(y):
    if i<=x:
        z.append(i*x)

a=map(str,z)
print(" ".join(a))