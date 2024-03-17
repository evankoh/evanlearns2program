import datetime

class CarRental(object):
  def __init__(self, model, quantity, price):
    self.model = model
    self.quantity = quantity
    self.price = price
    self.rented = None

  def display_car(self):
    if self.rented==None:
      self.rented=0
    print(f'''Car model: {self.model},
Price (per hour): SGD{int(self.price)},
Available quantity:{self.quantity-self.rented}/{self.quantity}
''')
      
  def rent(self, rented, rent_type, rent_time):
    if self.quantity >= rented:
      self.quantity-=rented
      self.rented = rented
      if rent_type == 'hourly':
        rent_type_time = datetime.timedelta(hours=rent_time)
        rent_time_hour = int(rent_type_time.seconds/3600)  #convert time to hourly for price
        cost=rent_time_hour*self.price                     #convert time to price
        return rent_time_hour, cost
      elif rent_type == 'daily':
        rent_type_time = datetime.timedelta(days=rent_time)
        rent_time_hour = rent_type_time.days*24
        cost=rent_time_hour*self.price
        return rent_time_hour, cost
      elif rent_type == 'weekly':
        rent_type_time = datetime.timedelta(weeks=rent_time)
        rent_time_hour = rent_type_time.days*24
        cost=rent_time_hour*self.price
        return rent_time_hour, cost

  def return_car(self, rent_time, rent_type, cost):
    if rent_type == 'hourly':
      rent_type='hours'
    elif rent_type == 'daily':
      rent_type='days'
    elif rent_type == 'weekly':
      rent_type='weeks'
    print(f'''
[ Final Bill ]
Car model: {self.model},
Rental period: {rent_time} {rent_type}
Cost: SGD{cost}
''')
    self.quantity+=self.rented
    self.rented-=self.rented
        
class Customer(object):
  def __init__(self):
    self.car_model=None
    self.rent_quantity=None
    self.rent_type=None
    self.rent_time=None
    self.return_car=True

  def request_car(self,car_model,rent_quantity,rent_type,rent_time):
    self.car_model=car_model
    self.rent_quantity=rent_quantity
    self.rent_type=rent_type
    self.rent_time=rent_time
    self.return_car=False

  def return_car(self,return_car):
    self.return_car=return_car
    if return_car==True:
      self.car_model=None
      self.rent_quantity=0
      self.rent_type=None
      self.rent_time=None
      self.return_car=False
    
def Main_Method():
  Optimusprime=CarRental('Optimus Prime',10,10)
  Bumblebee=CarRental('Bumblebee',20,5)
  Mrbean=CarRental('Mr. Bean',50,2)

  Car_Customer=Customer()

  print('''
[ Car Rental Service ]
''')
  Optimusprime.display_car()
  Bumblebee.display_car()
  Mrbean.display_car()

  rent_quantity=None
  rent_time_hour=None
  cost=None
  rent_type=None
  rent_time=None

  car_model=input('''Which car would you like to rent today?
(1)Optimus Prime    (2)Bumblebee    (3)Mr. Bean
''')
  if car_model=='1' or car_model=='Optimus Prime':
    car_model=1
  elif car_model=='2' or car_model=='Bumbleblee':
    car_model=2
  elif car_model=='3' or car_model=='Mr. Bean':
    car_model=3
  else:
    print('''
Invalid input, please try again.
''')
    Main_Method()

  rent_quantity=int(input('''
How many cars would you like to rent?
'''))

  rent_type=input('''
How would you like to rent the car?
(1)Hourly    (2)Daily    (3)Weekly
''')
  if rent_type=='1' or rent_type=='Hourly':
    rent_type='hourly'
  elif rent_type=='2' or rent_type=='Daily':
    rent_type='daily'
  elif rent_type=='3' or rent_type=='Weekly':
    rent_type='weekly'
  else:
    print('''
Invalid input, please try again.
''')
    Main_Method()

  rent_time=input('''
How long would you like to rent the car? (Hours/Days/Weeks)
''')

  Car_Customer.request_car(car_model,rent_quantity,rent_type,rent_time)

  #if car_model==1:
   # rent_time_hour,cost=Optimusprime.rent(Car_Customer.rent_time
  print(Car_Customer.car_model,Car_Customer.rent_quantity,Car_Customer.rent_type,Car_Customer.rent_time)

Main_Method()
          
#rent_time_hour,cost=Optimusprime.rent(1,rent_type,rent_time)

#print(f'Rent time is {rent_time_hour} hours. Cost is ${cost}.')

#Optimusprime.display_car()

#Optimusprime.return_car(rent_time,rent_type,cost)

#Optimusprime.display_car()

