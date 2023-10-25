#Write a Python program to reverse a number while loop

x=str(input("Input a number to reverse:"))
#x=str(43521)
y=list(x)
z=[]

counter=-1

#print(y[counter])

while counter>=-len(y):
    z.append(y[counter])
    counter-=1

print("".join(z))