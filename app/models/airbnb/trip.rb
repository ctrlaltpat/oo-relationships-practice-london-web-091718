class Trip

  attr_accessor :dates, :listing, :guest

  @@all = []

  def self.all
    @@all
  end

  def initialize(dates, listing, guest)
    @dates = dates
    @listing = listing
    @guest = guest
    Trip.all << self
  end

end
