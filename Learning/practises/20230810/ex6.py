#define variable x
x="There are %d types of people."%10

#define variable binary
binary="binary"

#define variable do_not
do_not="don't"

#define variable y
y="Those who know %s and those who %s."%(binary,do_not)

#print x
print(x)

#print y
print(y)

#print x within a statement below
print("I said: %r."%x)

#print y within a statement below
print("I also said: '%s'."%y)

#define variable hilarious
hilarious=True

#define variable joke_evaluation
joke_evaluation="Isn't that joke so funny?! %r"

#print joke_evaluation and insert hilarious into the string
print(joke_evaluation%hilarious)

#define variable w
w="This is the left side of..."

#define variable e
e="a string with a right side."

#print w and e but with a comma, space inbetween them
print(w,e)

#x="Hello sir would you be interested in"
#y="buying some ice cream?"

#print(x,y)