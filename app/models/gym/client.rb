class Client

  attr_accessor :name #, :trainer

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @trainer = nil
    @@all << self
  end

  def assign_trainer(trainer)
    @trainer = trainer
    trainer.clients << self if !trainer.clients.include?(self) 
  end

end
