#Using a while loop and .append() method append each item with a Dr. prefix to the lst.

lst1=["Phil","Oz","Seuss","Dre"]
len1=len(lst1)

lst2=[]

counter=0

while counter<len1:
    lst2.append("Dr."+lst1[counter])
    counter+=1

print(lst2)