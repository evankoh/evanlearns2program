#Check if given string is a palindrome.
#Palindrome = words that are identical when reversed.
#while loop

lst=input("Please enter a word:")
palin=[]

len1=len(lst)
counter=0

if lst.isnumeric()==True:
    print("You have entered an invalid word!")
elif lst.isnumeric()==False:
    print("you have entered a valid word!")
    while counter>-len1:
        counter-=1
        palin.append(lst[counter])
    palin=''.join(palin)
    if palin==lst:
        print(lst,"is a palindrome!")
    elif palin!=lst:
        print(lst,"is not a palindrome!")
        