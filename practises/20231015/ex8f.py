#Generate a Python list of all the even numbers between 4 to 30
#(write a function)
#Expected output: [4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28]

def evennum(x,y):
    x-=1
    lst=[]
    for i in range(x,y):
        if i%2==0:
            lst.append(i)
    return lst

start=4
end=30
print(evennum(start,end))
