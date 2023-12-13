#Calculate the sum of all the odd numbers within a given range

x=int(input("Input number:"))
y=0

for i in range(x):
    if i%2!=0:
        y+=i

print(y)