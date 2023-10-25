#find out which number is the greatest number amongst 3 inputs
a=int(input("Please input the first number:"))
b=int(input("Please input the second number:"))
c=int(input("Please input the third number:"))

if a>b:
    if a>c:
        print(a,"is the greatest number.")
    else:
        print(c,"is the greatest number.")
else:
    if b>c:
        print(b,"is the greatest number.")
    else:
        print(c,"is the greatest number.")




#x=int(input("Please write your test score:"))
#if x>=90:
#    print("A")
#elif x>=80:
#    print("B")
#elif x>=70:
#    print("C")
#elif x>=60:
#    print("D")
#else:
#    print("F")

#x=int(input("Please input a number:"))
#if x>0:
#    print(x,"is a positive number.")
#else:
#    print(x,"is a negative number.")