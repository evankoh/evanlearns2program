#Write a program to print n natural number
#in descending order using for loop

x=int(input("Enter a range:"))
y=[]

for i in reversed(range(x)):
    y.append(i+1)

a=map(str,y)
z=" ".join(a)
print(z)
