x=input("Is it raining tomorrow?(yes/no):")
yrain="yes"
nrain="no"
z="Can't you read?"
tax="I shall do my tax declaration before heading to the movie in the evening!"
notax="I shall head to the movie in the evening!"
swim="I shall go for a swim before going to the movie in the evening!"
if x==yrain:
    y=input("I shall tidy up the cellar and paint the walls. Is there some time left?(yes/no):")
    if y==yrain:
        print(tax)
    elif y==nrain:
        print(notax)
    else:
        print(z)
elif x==nrain:
    print(swim)
else:
    print(z)
    
#y="yes"
#n="no"
#if x==y:
#    print("yes")
#elif x==n:
#    print("no")
#else:
#    print("Hello can't you read English?")