name='Zed A. Shaw'
age=35 #not a lie UwU
height=74 #inches
weight=180 #lbs
eyes='Blue'
teeth='White'
hair='Brown'
cm=2.54 #conversion from inches to centimeters
kg=0.453592 #conversion from lbs to kg 

print("Let's talk about %s."%name)
print("He's %d inches tall."%height)
print("That means he's %d centimeters tall."%(height*cm))
print("He's %d pounds heavy."%weight)
print("That means he's %f kilograms heavy."%(round(weight*kg)))
print("Actually that's not too heavy.")
print("He's got %s eyes and %s hair."%(eyes,hair))
print("His teeth are usually %s depending on the coffee."%teeth)

#This line is tricky, try to get it exactly right.
print("If i add %d,%d, and %d I get %d."%(age,height,weight,age+height+weight))

#x=20.1
#y=30
#print("If you multiply %f by %r, it gives you %r!"%(x,y,x*y))