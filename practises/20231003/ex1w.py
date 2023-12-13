#Write a program in Python to display the Factorial of a number (while loop)
#Factorial e.g. 5 = 120 (5x4x3x2x1)

print("Input?")
fact=int(input())
x=1

counter=0

while counter<fact:
    x=x*(counter+1)
    counter+=1
    
print("Factorial is %s"%(x))
