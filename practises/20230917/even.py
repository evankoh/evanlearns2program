#Print all even numbers within a given range.

x=int(input("Input number to identify all even numbers:"))

for i in range(x):
    if i%2==0 and i!=0:
        print(i)