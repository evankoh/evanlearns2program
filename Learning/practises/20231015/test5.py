#Write a function to convert a name into initials.
#This kata strictly takes 2 words with 1 space in between them.
#The output should be 2 capital letters with a dot separating them.
#e.g. Sam Harris -> S.H

def abbrev_name(x):
    check=" "
    counter=0
    for i in x:
        if i==x[0]:
            name=i
        elif i==check:
            counter+=1
        elif counter==1:
            surname=i
            counter+=1
    print("%s.%s"%(name,surname))

nam=input("Name?")
abbrev_name(nam)