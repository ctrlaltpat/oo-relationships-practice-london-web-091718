class Ride

  attr_accessor :distance, :passenger, :driver

  @@all = []

  def self.all
    @@all
  end

  def initialize(passenger, driver, distance)
    @passenger = passenger
    @driver = driver
    @distance = distance
    @@all << self
  end

  def self.total_distance
    total = 0
    @@all.map { |r| r.distance }.each { |d| total+=d }
    total
  end

  def self.average_distance
    total_distance / @@all.count
  end
end
