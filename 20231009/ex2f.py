#Write a program to create function func1() to accept a variable length of arguments
#and print their value.

def func1(x):
    for i in x:
        print(i)

check=0
lst=[]

while check==0:
    num=input("Please input a number:")
    lst.append(int(num))
    con=input("Input another number? (y/n)")
    if con=="y":
        check==0
    elif con=='n':
        check+=1
    else:
        print("you have entered an invalid input.")

print("Printing values")
func1(lst)
