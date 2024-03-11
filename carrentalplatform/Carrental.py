import datetime

class CarRental(object):
    def __init__(self, model, quantity, price):
        self.model = model
        self.quantity = quantity
        self.price = price
        print(f'''
        Car model: {self.model},
        Available quantity:{self.quantity},
        Price (per hour): SGD{int(self.price)}
        ''')
      
    def rent(self, quantity, rent_type, rent_time):
        if self.quantity >= quantity:
          self.quantity-=quantity
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
        

Optimusprime=CarRental('Optimusprime',10,10)
Bumblebee=CarRental('Bumblebee',20,5)
Mrbean=CarRental('Mrbean',50,2)

a,b=Optimusprime.rent(1,'hourly',4)    #testing if can save values in variables
print(a,b)
print(Bumblebee.rent(1,'daily',2))
print(Mrbean.rent(1,'weekly',2))
      