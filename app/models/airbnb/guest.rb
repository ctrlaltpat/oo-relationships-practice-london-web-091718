class Guest

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    Guest.all << self
  end

  def listings
    trips.map { |t| t.listing }#.uniq
  end

  def trips
    Trip.all.select { |t| t.guest == self }
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    all.select { |g| g.trip_count > 1 }
  end

  def self.find_all_by_name(name)
    all.select { |g| g.name == name}
  end

end
