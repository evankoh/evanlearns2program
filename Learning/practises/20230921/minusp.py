#Display all numbers within a range except the prime numbers.
#Prime numbers only have 2 factors e.g. 5 only have 1 and 5 as factors.

lst=[]
counter=0

rans=input("Please enter a starting value for the range:")

if rans.isnumeric()==False:
    print("Please enter a valid starting value.")
elif rans.isnumeric()==True:
    rans=int(rans)

    rane=input("Please enter an ending value for the range:")

    if rane.isnumeric()==False:
        print("Please enter a valid ending value.")
    elif rane.isnumeric()==True:
        rane=int(rane)

        for i in range(rans,rane):
            counter=0
            for j in range(i):
                j+=1
                if i%j==0:
                    counter+=1
            if counter!=2:
                lst.append(i)

        print("Your input range is from %r to %r."%(rans,rane),"Non-prime numbers between range are as follows:",sep='\n')

        for i in lst:
            print(i)