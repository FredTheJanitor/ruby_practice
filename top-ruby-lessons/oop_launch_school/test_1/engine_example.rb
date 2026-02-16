class Engine
  def start
    puts "vroom vroom"
  end
end

class Passenger
end

class Car
  def initialize(passengers)
    @passengers = passengers
    @engine = Engine.new
  end
  def start
    @engine.start
  end
end

passengers = [Passenger.new, Passenger.new]
my_car = Car.new(passengers)
my_car.start
