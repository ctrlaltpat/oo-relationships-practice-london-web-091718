class Dessert

  attr_accessor :name, :ingredients

  @@all = []

  def self.all
    @@all
  end

  def initialize(name, ingredients)
    @name = name
  end

end
