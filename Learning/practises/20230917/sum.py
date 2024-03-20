#Calculate the sum of all numbers from 1 to a given number.

x=int(input("Input a number:"))
y=x+1
z=0

for i in range(y):
    z+=i

print(z)