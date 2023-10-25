#An isogram is a word that has no repeating letters, consecutive or non-consecutive.
#Implement a function that determines whether a string that contains only letters
#is an isogram. Assume the empty string is an isogram.
#Ignore letter case.

def isogram(x):
    check=0
    for i in x:
        focus=i
        for j in x:
            if j==focus:
                check+=1
    if check==len(x):
        print("isIsogram ",x," = true")
    elif check!=len(x):
        print("isIsogram ",x," = false")

word=input("Check if isogram:")

isogram(word)