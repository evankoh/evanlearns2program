#Accept a word from user and reverse the word. while loop

lst=input("Please input a word:")
rev=[]

counter=0
neglst=-len(lst)

if lst.isnumeric()==True:
    print("This is an invalid input!")
elif lst.isnumeric()==False:
    while counter>neglst:
        counter-=1
        rev.append(lst[counter])
    rev=''.join(rev)
    print("The reverse of your word,",lst,",is the word,",rev)
    