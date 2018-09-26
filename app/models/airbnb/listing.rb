class Listing

  attr_accessor :city

  @@all = []

  def self.all
    @@all
  end

  def initialize(city)
    @city = city
    Listing.all << self
  end

  def guests
    # trips.map { |t| t.guest }
    trips.map { |t| t.guest }.uniq
  end

  def trips
    Trip.all.select { |t| t.listing == self }
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    all.select { |t| t.city == city}
  end

  def self.most_popular
    all.max_by { |l| l.trip_count }
  end

end
