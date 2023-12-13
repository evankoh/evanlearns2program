#Accept a word from user and reverse the word.

lst=input("Please input a word:")
rev=[]

if lst.isnumeric()==True:
    print("This is an invalid input!")
elif lst.isnumeric()==False:
    for i in reversed(lst):
        rev.append(i)
    rev=''.join(rev)
    print("The reverse of your word,",lst,",is the word,",rev)
    