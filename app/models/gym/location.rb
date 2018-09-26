class Location

  attr_accessor :name

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def trainers
    Trainer.all.select { |t| t.locations.include?(self) }
  end

  def clients
    sum = 0
    trainers.map { |t| t.clients.count }.each { |c| sum += c }
    sum
  end

  def self.least_clients
    all.min_by { |l| l.clients}
  end

end
