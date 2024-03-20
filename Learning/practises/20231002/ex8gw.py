#Write a while loop using an if statement, that appends each number to the new list
#if it's positive.

lst1=[111,32,-9,-45,-17,9,85,-10]
lst2=[]

len1=len(lst1)

counter=0

while counter<len1:
    if lst1[counter]>0:
        lst2.append(lst1[counter])
    counter+=1
    
print(lst2)