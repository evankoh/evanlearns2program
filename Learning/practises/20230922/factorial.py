#Find the factorial of a given number.

num=input("Input a number:")
fact=1
lst=[]

if num.isnumeric()==False:
    print("Please enter a valid number!")
    
elif num.isnumeric()==True:
    num=int(num)
#    ran=num+1
    for i in range(num):
        i+=1
        fact*=i
        lst.append(i)
#        print("i is",i)
    print("The factorial of %d is %d."%(num,fact))