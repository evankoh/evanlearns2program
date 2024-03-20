#Write out a formula for this:
#24+34/100-1023

def add(a,b):
    print(f"ADDING {a} + {b}")
    return a+b

def subtract(a,b):
    print(f"SUBTRACTING {a} - {b}")
    return a-b
    
def divide(a,b):
    print(f"DIVIDING {a} / {b}")
    return a/b

solution=divide(add(24,34),subtract(100,1023))
print(f"The solution to the problem is {solution}")