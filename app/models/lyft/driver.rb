class Driver

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
    Ride.all.select { |r| r.driver == self }
  end

  def passengers
    rides.map { |r| r.passenger }
  end

  def total_mileage
    total = 0
    rides.map { |r| r.distance }.each { |d| total+=d }
    total
  end

  def self.mileage_cap(distance)
    @@all.select { |d| d.total_mileage > distance }
  end


end
