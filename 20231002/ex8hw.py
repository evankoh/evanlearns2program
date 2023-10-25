#Using while loop and if statement, append the value minus 1000 for each key to the
#new list if the value is above 1000. i.e.: if the value is 1500, 500 should be added
#to the new list.

dict={"z1":900,"t1":1100,"p1":2300,"r1":1050,"k1":3200,"g1":400}
lst=[]

lend=len(dict)

counter=0

#print(lend)
#print(dict["z1"])
#print(list(dict)[1])

while counter<lend:
    key=list(dict)[counter]
    print(key)
    if dict[key]>1000:
        lst.append(dict[key]-1000)
    counter+=1

print(lst)