class Cinema
  attr_accessor :name, :location

  def initialize(name, location)
    @name = name
    @location = location
    @movies = []
  end
end