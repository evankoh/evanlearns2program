#Count the total number of digits in a number.

lst=input("Please enter a number:")
digit=0

len1=len(lst)

if lst.isnumeric()==False:
    print("Please enter a valid number!") 
elif lst.isnumeric()==True:
    print("You have entered a valid number!")
#    digit=len(lst)
    while digit<len1:
        digit+=1
    print("The total number of digits in your number is %r!"%(digit))