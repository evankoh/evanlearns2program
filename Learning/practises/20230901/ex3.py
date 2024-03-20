#Write a Python program to reverse a number

print("Input a number to reverse: 43521")
x=str(43521)
y=list(x)
z=[]

for i in reversed(y):
    z.append(i)

print("".join(z))