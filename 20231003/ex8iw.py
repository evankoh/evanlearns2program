#Write a while loop which appends the type of each element in the first list
#to the second list.

lst1=[3.14,66,"Teddy Bear",True,[],{}]
lst2=[]

counter=0
len1=len(lst1)

while counter<len1:
    lst2.append(type(counter))
    counter+=1

print(lst2)
