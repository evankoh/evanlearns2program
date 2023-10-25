#Print all even numbers within a given range using while loop.

x=int(input("Input number to identify all even numbers:"))

counter=0

while counter<=x:
    if counter%2==0 and counter!=0:
        print(counter)
    counter+=1