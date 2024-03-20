#to assign alphabet as variable
alphabet = "abcdefghijklmnopqrstuvwxyz"
a=len(alphabet)

#to setup counter
counter=0

num=int(input("insert a number:"))
num-=1

#while loop to print 4th character in string
while counter<a:
    counter=counter+1 #this will add 1 to the counter with every loop
    if counter==num: #when counter reaches desired number of loops, print character
        print("The 4th character in the string is %s."%alphabet[counter])
        
        