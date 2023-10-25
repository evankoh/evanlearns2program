#Print multiplication table of a given number and range. while loop

number=int(input("Number:"))
ran=int(input("Range:"))
num=0

while num<ran:
    num+=1
    print(num,"x",number,"=",num*number)
    