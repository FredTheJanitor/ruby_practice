module Carianity
  def take_communion
    p "yum, the oil of the savior"
  end
  def go_to_church
    p "its not like one of THOSE churches, ours is different... you should come!"
  end
  
end

class Vehicle
  attr_accessor :color, :model
  attr_reader :speed, :stall, :crash, :running, :year, :miles_traveled, :fuel_consumed

  @@vehicle_count = 0

  def self.gas_mileage(miles, gallons)
    p "#{miles / gallons} mpg"
  end

  def self.total_number_of_vehicles
    @@vehicle_count
  end

  def initialize(year, color, model)
    @@vehicle_count += 1
    @year = year
    @color = color
    @model = model
    @speed = 0
    @running = false
    @stall = false
    @crash = false
    @miles_traveled = 0
    @fuel_consumed = 0
  end

  def spraypaint(paint_color)
    self.color = paint_color
  end

  def running?
    @running
  end
  def stall?
    @stall
  end
  def crash?
    @crash
  end

  def start
    if running?
      @fuel_consumed += 0.25
      return @stall = true
    end
    @running = true
  end

  def turn_off
    @running = false
    if speed > 0
      @crash = true
    end
    @speed = 0
  end

  def speed_up
    unless running?
      @stall = true
      @fuel_consumed += 0.25
    end
    if running?
      @speed += 5
      @miles_traveled += 1
      @fuel_consumed += 0.5
    end
    
  end

  def brake
    if speed > 0
      @speed -= 5
    end
  end

  def info
    "year: #{year}, color: #{color}, model: #{model}, speed: #{speed}, running: #{running}, stalled: #{stall}, crash: #{crash}"
  end
end

class MyCar < Vehicle
  CAR_RELIGION = "Carianity"
  include Carianity
end

class MyTruck < Vehicle
  TRUCK_RELIGION = "Trislam"
end

my_car = MyCar.new(666, "satanic black", "Chariot of the Dead")

puts my_car.info
my_car.speed_up
puts my_car.info
my_car.turn_off
puts my_car.info
my_car.start
puts my_car.info
my_car.speed_up
puts my_car.info
my_car.speed_up
puts my_car.info
my_car.brake
puts my_car.info
my_car.turn_off
puts my_car.info
puts my_car.color
my_car.color = "red"
puts my_car.color
puts my_car.year
my_car.spraypaint("indigo")
puts my_car.color
MyCar.gas_mileage(200, 1)
puts Vehicle.total_number_of_vehicles
my_truck = MyTruck.new(123, "red", "pickup")
puts Vehicle.total_number_of_vehicles
my_car.take_communion
p MyCar.ancestors
p MyTruck.ancestors