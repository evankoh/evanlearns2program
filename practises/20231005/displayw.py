#Display numbers from a list using while loop

loop=[1]
lst=[]
y="yes"
n="no"

counter=0

while counter<len(loop):
    num=input("Please input a number into list:")
    if num.isnumeric():
        num=int(num)
        lst.append(num)
        counter+=1
        more=(input("Do you wish to input more numbers?(yes/no):"))
        if more==y:
            loop.append(counter)
        elif more==n:
            loop=loop
        else:
            print("Can you read?")
    else:
        print("Please input a valid number!")

print("Your list is",lst)
