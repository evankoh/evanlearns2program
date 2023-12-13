#Question: Write a while loop so that every item in the list is printed.

lst=["koala","cat","fox","panda","chipmunk","sloth","penguin","dolphin"]
length=len(lst)

counter=0

while counter<length:
    print(lst[counter])
    counter+=1