#Accepts a string and calculates the number of digits and letters

string=input("Enter a string containing both digits and letters:")
digi=0
let=0

for i in string:
    if i.isnumeric()==True:
        digi+=1
    elif i.isnumeric()==False:
        let+=1

print("%s contains %s digits and %s letters."%(string,digi,let))
