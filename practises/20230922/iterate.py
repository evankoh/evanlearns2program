#Iterates the integers from a start value to end value.

start=input("Please input a start value:")
if start.isnumeric()==False:
    print("Please enter a valid value!")
elif start.isnumeric()==True:
    end=input("Please input an end value:")
    if end.isnumeric()==False:
        print("Please enter a valid value!")
    elif end.isnumeric()==True:
        start=int(start)
        end=int(end)+1
        for i in range(start,end):
            print(i)