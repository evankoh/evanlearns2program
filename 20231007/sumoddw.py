#Calculate the sum of all the odd numbers within a given range (while loop)

x=int(input("Input number:"))
y=0
num=0

while y<=x:
    num+=1
    if num%2!=0:
        y+=num

print(y)
