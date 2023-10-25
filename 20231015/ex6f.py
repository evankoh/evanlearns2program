#Write a program to create a recursive function to calculate the sum of numbers
#between 0 and number from user input.
#A recursive function is a function that calls itself again and again.
#e.g. sum of numbers 0 to 10 equals 55

def checknum(x):
    try:
        int(x)
        return True
    except ValueError:
        return False
        

def sum1(y):
    if y==0:
        return y
    else:
        total=y+sum1(y-1)
        return total
    

num=input("Input number:")
if checknum(num)==True:
    num=int(num)
    print(sum1(num))
    
