from sys import argv

script, filename = argv

print(f"We're going to erase {filename}")
print("If you don't want that, hit CTRL-C (^C).")
print("If you want that, hit RETURN.")

input("?")

print("Opening the file...")

with open(filename,'r+') as target:
    print("Truncating the file. Goodbye!")
#    print(target.read())
    target.truncate()
    
    print("Now I'm going to ask you for three lines.")
    
    line1=input("line 1:")
    line2=input("line 2:")
    line3=input("line 3:")
    
    print("I'm going to write these to the file.")
    
    target.write(f"{line1}\n{line2}\n{line3}\n")
#    target.write("\n")
#    target.write(line2)
#    target.write("\n")
#    target.write(line3)
#    target.write("\n")
    
    print("And finally, we close it.")


#txt=open(filename)
#with open(filename) as txt:
#    print(f"Here's your file {filename}:")
#    print(txt.read())

#    print("Type the filename again:")
#    file_again=input()

#    with open(file_again) as txt_again:
#    txt_again=open(file_again)

#        print(txt_again.read())
#txt.close()
#txt_again.close()

#script, first, second, third = argv

#print("The script is called",script)
#print("Your first variable is:",first)
#print("Your second variable is:",second)
#print("Your third variable is:",third)

#print(argv)

#script,user_name=argv
#prompt='>'

#print("Hi %s, I'm the %s script."%(user_name, script))
#print("I'd like to ask you a few questions.")
#print("Do you like me %s?"%user_name)
#likes=input(prompt)

#print("Where do you live %s?"%user_name)
#lives=input(prompt)

#print("What kind of computer do you have?")
#computer=input(prompt)

#print("""
#Alright, so you said %r about liking me.
#You live in %r. Not sure where that is.
#And you have a %r computer. Nice.
#"""%(likes,lives,computer))

#(script,first,second,third)=argv

#print("The script is called:",script)
#print("Your first variable is:",first)
#print("Your second variable is:",second)
#print("Your third variable is:",third)

#while True:
#    for i in ["/","-","|","\\","|"]:
#        print("%s\r"%i)

#tabby_cat="\tI'm tabbed in."
#persian_cat="I'm split\non a line."
#backslash_cat="I'm \\ a \\ cat."

#fat_cat="""
#I'll do a list:
#\t* Cat food
#\t* Fishies
#\t* Catnip\n\t* Grass
#"""

#print(tabby_cat)
#print(persian_cat)
#print(backslash_cat)
#print(fat_cat)

#days= "Mon Tue Wed Thu Fri Sat Sun"
#months= "Jan\nFeb\nMar\nApr\nMay\nJun\nJul\nAug"

#print("Here are the days:",days)
#print("Here are the months:",months)

#print("""
#There's something going on here.
#With the three double-quotes.
#We'll be able to type as much as we like.
#Even 4 lines if we want, or 5, or 6.
#""")



#name="Alice"
#age=30
#height=5.8
#print(f"""My name is {name}.
#I am {age} years old,
#and I am {height} feet tall.""")

#print("My name is %s. I am %d years old, and I am %r feet tall."%(name,age,height))