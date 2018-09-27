class Passenger

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def rides
    Ride.all.select { |r| r.passenger == self }
  end

  def drivers
    rides.map { |r| r.driver }
  end

  def total_distance
    sum = 0
    rides.map { |r| r.distance }.each { |d| sum+=d }
    sum
  end

  def self.premium_members
    @@all.select { |p| p.total_distance > 100 }
  end

end
