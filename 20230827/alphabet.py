#to assign alphabet as variable
alphabet = "abcdefghijklmnopqrstuvwxyz"

#to setup counter
counter=0

#for loop to print 4th character in string
for i in alphabet:
    counter=counter+1 #this will add 1 to the counter with every loop
    if counter==4: #when counter reaches desired number of loops, print character
        print("The 4th character in the string is %s."%i)
        
        