#Check if a given number is an Armstrong number.
#Armstrong numbers: numbers whereby based on the number of digits,
#the sum of all its digits raised by the number of digits equals to the original number
#examples of Armstrong numbers: 1,2,3,4,5,6,7,8,9,153,370,371,407,1634,8208...

num=input("Please input a number:")
power=len(num)
check=0

if num.isnumeric()==False:
    print("Please input a valid number!")
elif num.isnumeric()==True:
    number=int(num)
    for i in num:
        j=int(i)
        check+=j**power
    if check==number:
        print(num,"is an Armstrong number.")
    elif check!=number:
        print(num,"is not an Armstrong number.")
#    print(check)