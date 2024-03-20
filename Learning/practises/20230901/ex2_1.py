print("Input a word to reverse: python")

x = input()
x = list(x)
y = []

for i in reversed(x):
    y.append(i)

print("".join(y))