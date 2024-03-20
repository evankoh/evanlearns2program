#Write a for loop which appends the square of each number to the new list.

lst1=[3,7,6,8,9,11,15,25]
lst2=[]

for i in lst1:
    lst2.append(i**2)

print(lst2)