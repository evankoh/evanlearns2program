#Write a program to create a function show_employee() using the following conditions:
#1. It should accept the employee's name and salary and display both.
#2. If the salary is missing in the function call then assign default value 9000 to salary.

def show_employee(x,y):
    print(y)
    if y.isnumeric()==True:
        if int(y)<=0:
            y=9000
        print("name: ",x," salary: ",y)
    elif y.isnumeric()==False:
        y=9000
        print("name: ",x," salary: ",y)

counter=0

while counter==0:
    a=input("name:")
    b=input("salary:")
    show_employee(a,b)
    another=input("another employee?(y/n)")
    if another=="y":
        counter=0
    elif another=="n":
        counter+=1
    else:
        print("Incorrect input.")
        counter+=1
        