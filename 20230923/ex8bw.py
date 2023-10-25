#Question: Write a while loop which print "Hello!", plus each name in the list.
#i.e.: "Hello!, Sam"

lst=["Sam","Lisa","Micha","Dave","Wyatt","Emma","Sage"]
length=len(lst)

counter=0

while counter<length:
    print("Hello!,%s"%lst[counter])
    counter+=1