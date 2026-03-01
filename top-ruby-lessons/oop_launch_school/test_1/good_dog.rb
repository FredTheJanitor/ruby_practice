class GoodDog
  DOG_YEARS = 7
  @@number_of_dogs = 0
  
  attr_accessor :name, :height, :weight

  def self.what_am_i?
    "i am class: #{self}"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def initialize(n, h, w)
    @@number_of_dogs += 1
    @name = n
    @height = h
    @weight = w
  end  

  def change_info(n,h,w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def speak
    "#{name} says Arf!"
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end
puts GoodDog.total_number_of_dogs
sparky = GoodDog.new("Sparky", "8 inches", "7 lbs")
puts sparky.speak
puts GoodDog.total_number_of_dogs
fido = GoodDog.new("Fido", "1000 feet", "1,000,000 lbs")
puts GoodDog.total_number_of_dogs
puts fido.speak

puts sparky.info

sparky.change_info("Lucifer Almighty, the Destroyer of God", "6.6 inches", "6.666 lbs")

puts sparky.info

puts GoodDog.what_am_i?

puts GoodDog.total_number_of_dogs