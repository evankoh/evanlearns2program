print("Input a word to reverse: python")

x = list(input())
#x = list(x)
y = []

lenx=-len(x)

counter=-1

while counter>=lenx:
    y.append(x[counter])
    counter-=1

print("".join(y))
