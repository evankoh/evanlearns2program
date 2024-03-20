#Your tasks is to make a function that can take any non-negative integer
#as an argument and return it with its digit in descending order.
#Essentially, rearrange the digits to create the highest possible number.
#Examples: input 42145 -> output 54421

def sort(x):
    lst=[]
    check=0
    for i in x:
        focus=int(i)
        if lst==[]:
            lst.append(focus)
        elif focus<=lst[check-1]:
            lst.append(focus)
        elif focus>=lst[0]:
            lst.insert(0,focus)
        check+=1
        print(check)
        print(lst)
    lst=[str(x) for x in lst]
    newnum=''.join(lst)
    return newnum

num=input("Enter digit:")
if num.isnumeric()!=True:
    print("Invalid input.")
elif num.isnumeric()==True:
    if int(num)<0:
        print("Negative input.")
    elif int(num)>=0:
        print("input ",num," -> output ",sort(num))
        