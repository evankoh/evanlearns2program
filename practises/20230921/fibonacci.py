#Get the Fibonacci series between 0 to 50
#Fibonacci series as follows: 0,1,1,2,3,5,8,13,21,34...
#Adding the 2 numbers before it e.g. 0+1=1,1+1=2,2+3=5...

fstart=0
fstop=50
num1=0
num2=1
num3=0
lst=[]

lst.append(num1)
lst.append(num2)

for i in range(50):
    num3=num1+num2
    num1=num2
    num2=num3
    lst.append(num3)

for i in range(50):
    if lst[i]<=50:
        print(lst[i])
    else:
        i=50




























#fstart=int(input("Please input start of Fibonacci series:"))
#fstop=int(input("Please input end of Fibonacci series:"))
