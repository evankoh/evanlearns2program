#Given 2 integers a and b, which can be positive or negative, find the sum of
#all the integers between (include them) and return it.
#If the 2 numbers are equal, return a or b
#Note: a and b are not ordered

def checknum(z):
    try:
        int(z)
        return True
    except ValueError:
        return False

def sumrange(x,y):
    if x==y:
        print(x)
    elif x!=y:
        if x>y:
            big=x+1
            small=y
        elif y>x:
            big=y+1
            small=x
        num=0
        for i in range(small,big):
            num+=i
        print(num)

first=input("input number:")
second=input("input another number:")
if checknum(first)==True and checknum(second)==True:
    first=int(first)
    second=int(second)
    sumrange(first,second)
else:
    print("invalid input.")
    