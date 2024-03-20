people=30
cars=40
buses=15

#print
if cars > people:
    print("We should take the cars.")
#won't print
elif cars < people:
    print("We should not take the cars.")
#won't print
else:
    print("We can't decide.")

#won't print
if buses > cars:
    print("That's too many buses.")
#print
elif buses < cars:
    print("Maybe we could take the buses.")
#won't print
else:
    print("We still can't decide.")

#print
if people > buses:
    print("Alright, let's just take the buses.")
#won't print
else:
    print("Fine, let's stay home then.")