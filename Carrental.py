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

#    def display_avai(self, model, quantity, price):
      
    def rent(self, quantity, hourly, daily, weekly):
        if self.quantity >= quantity:
          remaining = self.quantity - quantity
          if int(hourly)>0:
            cost=int(time)*int(self.price) #convert time to price
        

Optimusprime=CarRental('Optimusprime',10,10)
Bumbleebee=CarRental('Bumblebee',20,5)
Mrbean=CarRental('Mrbean',50,2)

#CarRental=CarRental()
  
#class Optimusprime(CarRental):
#    def __init__(self, model, quantity, price):
#        super().__init__(model, quantity, price)
#        self.model=Optimusprime
#        self.quantity=10
#        self.price=10*3600 #convert price/hr to price/seconds

#    def display_available(self,model,quantity):
#        print("Model: ", self.model)
#        print("Quantity: ", self.quantity)
      
      