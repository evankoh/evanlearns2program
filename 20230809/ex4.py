#Define how many cars are there.
cars=100

#Define how much space is there in a single car.
space_in_a_car=4.0

#Define how many drivers are there.
drivers=30

#Define how many passengers are there.
passengers=90

#Define how many cars are not driven by calculating the number of cars against number of available drivers.
cars_not_driven=cars-drivers

#Define how many cars are driven by using the value given to drivers.
cars_driven=drivers

#Define total capacity of cars driven by calculating cars driven with space in a single car.
carpool_capacity=cars_driven*space_in_a_car

#Define average passengers per car by calculating total number of passengers against number of cars driven.
average_passengers_per_car=passengers/cars_driven

print("There are",cars,"cars available.")
print("There are only",drivers,"drivers available.")
print("There will be",cars_not_driven,"empty cars today.")
print("We can transport",carpool_capacity,"people today.")
print("We have",passengers,"to carpool today.")
print("We need to put about",average_passengers_per_car,"in each car.")

x=16

print(x/space_in_a_car)

print("There are %s car spaces."%x)