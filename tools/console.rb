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

#-------------------- testing lyft ------------------------

#-------------------- testing gym ------------------------

#-------------------- testing gym ------------------------


Pry.start
