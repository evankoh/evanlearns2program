#Create an inner function to calculate the addition in the following way:
#- Create an outer function that will accept two parameters, a and b
#- Create an inner function inside an outer function that will calculate 
#the addition of a and b
#- At last, an outer function will add 5 into addition and return items

def outer_add(a,b):
    def inner_add(a,b):
        return a+b
    total=inner_add(a,b)+5
    return total
    
counter=0

while counter==0:
    x=input("first number:")
    if x.isnumeric()==True:
        x=int(x)
        y=input("second number:")
        if y.isnumeric()==True:
            y=int(y)
            print(outer_add(x,y))
            counter+=1
        elif y.isnumeric()==False:
            print("Invalid input")
            counter+=1
    elif x.isnumeric()==False:
        print("Invalid input")
        counter+=1