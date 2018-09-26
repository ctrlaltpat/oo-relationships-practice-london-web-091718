class Trainer

  attr_accessor :name, :clients, :locations

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @clients = []
    @locations = []
    @@all << self
  end

  def add_location(location)
    @locations << location
  end

  def self.most_clients
    all.max_by { |t| t.clients.count }
  end

end
