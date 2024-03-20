def top_bottom(total,add):
    i=0
    numbers=[]

    for i in range(0,total+1,add):
    #while i<total:
        print(f"At the top i is {i}")
        numbers.append(i)
        
        #i+=add
        print("Numbers now:",numbers)
        print(f"At the bottom i is {i}")
        
        
    print("The numbers: ")

    for num in numbers:
        print(num)
        
x=int(input("Please enter a value:"))
y=int(input("Please enter an increment value:"))
top_bottom(x,y)