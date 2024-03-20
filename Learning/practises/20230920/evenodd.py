#Count the number of even and odd numbers from a series of numbers.

lst=[]
add=[1]
yes="y"
no="n"
odd=0
even=0

for i in add:
    x=input("Please input a number:")
    if x.isnumeric()==False:
        print("You have entered an invalid input!")
    elif x.isnumeric()==True:
        x=int(x)
        lst.append(x)
        y=input("Would you like to input another number?(y/n):")
        if y==yes:
            add.append(i)
        elif y!=yes and y!=no:
            print("You have entered an invalid input!")

for i in lst:
    if i%2==0:
        even+=1
    elif i%2!=0:
        odd+=1

print("The series of numbers:%r"%(lst),"Even numbers:%d"%(even),"Odd numbers:%d"%(odd),sep="\n")

#print(lst)