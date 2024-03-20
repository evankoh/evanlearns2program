#Write a program to create function calculation() such that it can accept two variables
#and calculate addition and subtraction. Also, it must return both additon and subtraction
#in a single return call.

def calculation(a,b):
    addition=a+b
    subtraction=a-b
    return addition, subtraction

x=int(input("Input first number:"))
y=int(input("Input second number:"))

res=calculation(x,y)

print(res)