#Count the total number of digits in a number.

lst=input("Please enter a number:")
digit=0

if lst.isnumeric()==False:
    print("Please enter a valid number!") 
elif lst.isnumeric()==True:
    print("You have entered a valid number!")
#    digit=len(lst)
    for i in lst:
        digit+=1
    print("The total number of digits in your number is %r!"%(digit))