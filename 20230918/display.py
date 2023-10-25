#Display numbers from a list using for loop

loop=[1]
lst=[]
y="yes"
n="no"

for i in loop:
    num=input("Please input a number into list:")
    if num.isnumeric():
        num=int(num)
        lst.append(num)
        more=(input("Do you wish to input more numbers?(yes/no):"))
        if more==y:
            loop.append(i)
        elif more==n:
            loop=loop
        else:
            print("Can you read?")
    else:
        print("Please input a valid number!")

print("Your list is",lst)
