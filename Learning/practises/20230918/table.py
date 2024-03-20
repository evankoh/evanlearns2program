#Print multiplication table of a given number and range.

number=int(input("Number:"))
ran=int(input("Range:"))
ran+=1

for i in range(ran):
    print(i,"x",number,"=",i*number)