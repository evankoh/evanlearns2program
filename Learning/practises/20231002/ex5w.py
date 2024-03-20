#Write a while loop program to display only those numbers from a list that satisfy
#the following conditions
# -The number must be divisible by five
# -If the number is greater than 150, then skip it and move to the next number
# -If the number is greater than 500, then stop the loop

numbers=[12,75,150,180,145,525,50]
x=[]

counter=0

lenn=len(numbers)

while counter<lenn:
    y=numbers[counter]
    if y>=500:
        counter=lenn+1
    elif y%5!=0:
        counter+=1
    elif y%5==0 and y<=150:
        print(y)
        counter+=1
    elif 500>y>150:
        counter+=1
    

#for i in numbers:
 #   if i%5==0:
  #      pass
   #     if 500>i>150:
    #        continue
     #   if i>500:
      #      break
       # x.append(i)

#for j in x:
 #   print(j)