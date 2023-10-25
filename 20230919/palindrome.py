#Check if given string is a palindrome.
#Palindrome = words that are identical when reversed.

lst=input("Please enter a word:")
palin=[]

if lst.isnumeric()==True:
    print("You have entered an invalid word!")
elif lst.isnumeric()==False:
    print("you have entered a valid word!")
    for i in reversed(lst):
        palin.append(i)
    palin=''.join(palin)
    if palin==lst:
        print(lst,"is a palindrome!")
    elif palin!=lst:
        print(lst,"is not a palindrome!")
        