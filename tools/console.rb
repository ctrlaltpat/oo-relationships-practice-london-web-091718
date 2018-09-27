require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#-------------------- testing airbnb ------------------------
patrick = Guest.new("Patrick")
kermit = Guest.new("Kermit")
charles = Guest.new("Charles")
pat = Guest.new("Pat")
rick = Guest.new("Rick")

bim = Listing.new("Bridgetown")
bim2 = Listing.new("Bridgetown")
tt = Listing.new("Port of Spain")
lon = Listing.new("London")
ams = Listing.new("Amsterdan")
ice = Listing.new("Reykjavík")
can = Listing.new("Toronto")

stay1 = Trip.new("April 15th - April 30th 2019", bim, patrick)
stay2 = Trip.new("April 15th - April 30th 2020", bim, patrick)
stay3 = Trip.new("April 15th - April 30th 2021", bim, patrick)
stay4 = Trip.new("April 15th - April 30th 2019", can, patrick)
stay5 = Trip.new("April 15th - April 30th 2020", lon, kermit)
stay5 = Trip.new("April 15th - April 30th 2020", bim, kermit)
stay6 = Trip.new("April 15th - April 30th 2019", ice, charles)
stay7 = Trip.new("April 15th - April 30th 2020", ams, patrick)
stay8 = Trip.new("April 15th - April 30th 2019", lon, pat)
stay9 = Trip.new("April 15th - April 30th 2021", can, rick)
#-------------------- testing airbnb ------------------------

#-------------------- testing bakery ------------------------

#-------------------- testing bakery ------------------------

#-------------------- testing lyft ------------------------
driver_1 = Driver.new("Dan")
driver_2 = Driver.new("Deron")
driver_3 = Driver.new("Dexter")

passenger_1 = Passenger.new("Patrick")
passenger_2 = Passenger.new("Peter")
passenger_3 = Passenger.new("Plato")

ride_1 = Ride.new(passenger_1, driver_1, 20.00)
ride_9 = Ride.new(passenger_3, driver_1, 50.00)
ride_5 = Ride.new(passenger_2, driver_1, 7.00)
ride_11 = Ride.new(passenger_3, driver_1, 6.00)
ride_2 = Ride.new(passenger_1, driver_2, 10.00)
ride_3 = Ride.new(passenger_1, driver_2, 40.00)
ride_4 = Ride.new(passenger_1, driver_2, 30.00)
ride_10 = Ride.new(passenger_3, driver_2, 5.00)
ride_12 = Ride.new(passenger_2, driver_2, 50.00)
ride_6 = Ride.new(passenger_3, driver_3, 7.00)
ride_7 = Ride.new(passenger_2, driver_3, 50.00)
ride_8 = Ride.new(passenger_1, driver_3, 10.00)
#-------------------- testing lyft ------------------------

#-------------------- testing gym ------------------------
trainer_1 = Trainer.new("Tim")
trainer_2 = Trainer.new("Tod")
trainer_3 = Trainer.new("Taz")

location_1 = Location.new("Last Fitness")
location_2 = Location.new("Backyard")
location_3 = Location.new("SWEAT")

client_1 = Client.new("Patrick")
client_2 = Client.new("Andre")
client_3 = Client.new("Kentley")
client_4 = Client.new("Geoff")
client_5 = Client.new("Ed")

client_1.assign_trainer(trainer_1)
client_1.assign_trainer(trainer_1)
client_2.assign_trainer(trainer_2)
client_3.assign_trainer(trainer_3)
client_4.assign_trainer(trainer_3)
client_5.assign_trainer(trainer_3)
trainer_2.add_location(location_1)
trainer_2.add_location(location_2)
trainer_2.add_location(location_3)
trainer_1.add_location(location_1)
trainer_3.add_location(location_1)
trainer_3.add_location(location_2)
#-------------------- testing gym ------------------------


Pry.start
