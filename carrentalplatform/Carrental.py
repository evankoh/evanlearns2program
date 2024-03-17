import datetime

class CarRental(object):
  def __init__(self, model, quantity, price):
    self.model = model
    self.quantity = quantity
    self.price = price
    self.rented = None
    self.rent_time_hour = None
    self.cost = None

  def display_car(self):
    if self.rented==None:
      self.rented=0
    print(f'''Car model: {self.model},
Price (per hour): SGD{int(self.price)},
Available quantity: {self.quantity}/{self.quantity+self.rented}
''')
      
  def rent(self, rented, rent_type, rent_time):
    if self.quantity >= rented:
      self.quantity-=rented
      self.rented = rented
      if rent_type == 'hourly':
        rent_type_time = datetime.timedelta(hours=rent_time)
        self.rent_time_hour = int(rent_type_time.seconds/3600)  #convert time to hourly for price
        self.cost=self.rent_time_hour*self.price                     #convert time to price
        return self.rent_time_hour, self.cost
      elif rent_type == 'daily':
        rent_type_time = datetime.timedelta(days=rent_time)
        self.rent_time_hour = rent_type_time.days*24
        self.cost=self.rent_time_hour*self.price
        return self.rent_time_hour, self.cost
      elif rent_type == 'weekly':
        rent_type_time = datetime.timedelta(weeks=rent_time)
        self.rent_time_hour = rent_type_time.days*24
        self.cost=self.rent_time_hour*self.price
        return self.rent_time_hour, self.cost
      else:
        return 0,0

  def return_car(self, rent_time, rent_type, cost):
    if rent_type == 'hourly':
      rent_type='hours'
    elif rent_type == 'daily':
      rent_type='days'
    elif rent_type == 'weekly':
      rent_type='weeks'
    print(f'''
[ Final Bill ]
Car model: {self.model}
Rental period: {rent_time} {rent_type}
Cost: SGD{cost}
''')
    self.quantity+=self.rented
    self.rented=0
        
class Customer(object):
  def __init__(self):
    self.car_model=None
    self.rent_quantity=None
    self.rent_type=None
    self.rent_time=None
    #self.return_car=None
    self.return_car_flag=True
    
  def request_car(self,car_model,rent_quantity,rent_type,rent_time,return_car_flag):
    self.car_model=car_model
    self.rent_quantity=rent_quantity
    self.rent_type=rent_type
    self.rent_time=rent_time
    self.return_car_flag=return_car_flag

  def return_car(self):
    self.car_model=None
    self.rent_quantity=0
    self.rent_type=None
    self.rent_time=None
    self.return_car_flag=True
    
def Main_Method():  
  action=input('''
[ Car Rental Service ]
How can we help you today?
(1)Display car availability    (2)Rental modes    (3)Rent a car    (4)Return a car    (5)Exit

''')
  if action=='1' or action=='Display car availability' or action=='display car availability':
    Optimusprime.display_car()
    Bumblebee.display_car()
    Mrbean.display_car()
    Main_Method()
  elif action=='2' or action=='Rental modes' or action=='rental modes':
    print('''
Our rental modes are on an hourly, daily or weekly basis.
''')
    Main_Method()
  elif action=='3' or action=='Rent a car' or action=='rent a car':
    car_model=input('''
Which car would you like to rent today?
(1)Optimus Prime    (2)Bumblebee    (3)Mr. Bean
''')
    if car_model=='1' or car_model=='Optimus Prime':
      car_model='Optimus Prime'
    elif car_model=='2' or car_model=='Bumbleblee':
      car_model='Bumblebee'
    elif car_model=='3' or car_model=='Mr. Bean':
      car_model='Mr. Bean'
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
      rent_type2='hours'
    elif rent_type=='2' or rent_type=='Daily':
      rent_type='daily'
      rent_type2='days'
    elif rent_type=='3' or rent_type=='Weekly':
      rent_type='weekly'
      rent_type2='weeks'
    else:
      print('''
Invalid input, please try again.
''')
      Main_Method()

    rent_time=int(input('''
How long would you like to rent the car? (Hours/Days/Weeks)
'''))
    return_car=False
    Car_Customer.request_car(car_model,rent_quantity,rent_type,rent_time,return_car)
    print(f'''
Thank you for renting with us!

Car Model: {Car_Customer.car_model}
Rent quantity: {Car_Customer.rent_quantity}
Rent type: {Car_Customer.rent_type}
Rent time: {Car_Customer.rent_time} {rent_type2}

We hope you have a pleasant journey!



Hi, welcome back.
Please return your rental before making another transaction:
''')
    if Car_Customer.car_model=='Optimus Prime':
      rent_time_hour, cost = Optimusprime.rent(Car_Customer.rent_quantity,Car_Customer.rent_type,Car_Customer.rent_time)
    elif Car_Customer.car_model=='Bumblebee':
      rent_time_hour, cost = Bumblebee.rent(Car_Customer.rent_quantity,Car_Customer.rent_type,Car_Customer.rent_time)
    elif Car_Customer.car_model=='Mr. Bean':
      rent_time_hour, cost = Mrbean.rent(Car_Customer.rent_quantity,Car_Customer.rent_type,Car_Customer.rent_time)
    if Car_Customer.car_model=='Optimus Prime':
      Optimusprime.return_car(Optimusprime.rent_time_hour,Car_Customer.rent_type,Optimusprime.cost)
      Car_Customer.return_car()
    elif Car_Customer.car_model=='Bumblebee':
      Bumblebee.return_car(Bumblebee.rent_time_hour,Car_Customer.rent_type,Bumblebee.cost)
      Car_Customer.return_car()
    elif Car_Customer.car_model=='Mr. Bean':
      Mrbean.return_car(Mrbean.rent_time_hour,Car_Customer.rent_type,Mrbean.cost)
      Car_Customer.return_car()
    print('''Thank you for using our services.
Have a nice day!
''')
    Main_Method()

  elif action=='4' or action=='Return a car' or action=='return a car':
    print(Car_Customer.return_car_flag)
    if Car_Customer.return_car_flag is True:
      print('''
You have not rented a car yet.
''')
      Main_Method()
  elif action=='5' or action=='Exit' or action=='exit':
    exit_app=input('''
Are you sure you wish to exit?
(1)Yes    (2)No
''') 
    if exit_app=='1' or exit_app=='Yes':
      exit()
    elif exit_app=='2' or exit_app=='No':
      Main_Method()
  else:
      print("Invalid input. Please try again.")
      Main_Method()

Optimusprime=CarRental('Optimus Prime',10,10)
Bumblebee=CarRental('Bumblebee',20,5)
Mrbean=CarRental('Mr. Bean',50,2)

Car_Customer=Customer()

rent_quantity=None
rent_time_hour=None
cost=None
rent_type=None
rent_type2=None
rent_time=None
return_car=Car_Customer.return_car_flag
      
Main_Method()
          
#rent_time_hour,cost=Optimusprime.rent(1,rent_type,rent_time)

#print(f'Rent time is {rent_time_hour} hours. Cost is ${cost}.')

#Optimusprime.display_car()

#Optimusprime.return_car(rent_time,rent_type,cost)

#Optimusprime.display_car()

