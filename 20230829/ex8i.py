#Write a for loop which appends the type of each element in the first list
#to the second list.

lst1=[3.14,66,"Teddy Bear",True,[],{}]
lst2=[]

for i in lst1:
    lst2.append(type(i))

print(lst2)