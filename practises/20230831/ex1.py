#Write a program in Python to display the Factorial of a number
#Factorial e.g. 5 = 120 (5x4x3x2x1)

print("Input?")
fact=int(input())
x=1

for i in range(fact):
    x=x*(i+1)
    
print("Factorial is %s"%(x))