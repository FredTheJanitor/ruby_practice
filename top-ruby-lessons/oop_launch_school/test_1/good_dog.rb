class GoodDog
  DOG_YEARS = 7
  @@number_of_dogs = 0
  
  attr_accessor :name, :height, :weight, :age

  def self.what_am_i?
    "i am class: #{self}"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def initialize(n, h, w, a)
    @@number_of_dogs += 1
    @name = n
    @height = h
    @weight = w
    self.age = a * DOG_YEARS
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

  def to_s
    "F*** the b****** and the h******* here we gooooo"
  end

end
puts GoodDog.total_number_of_dogs
sparky = GoodDog.new("Sparky", "8 inches", "7 lbs", 2)
puts sparky.speak
puts GoodDog.total_number_of_dogs
fido = GoodDog.new("Fido", "1000 feet", "1,000,000 lbs", 3)
puts GoodDog.total_number_of_dogs
puts fido.speak

puts sparky.info

sparky.change_info("Lucifer Almighty, the Destroyer of God", "6.6 inches", "6.666 lbs")

puts sparky.info

puts GoodDog.what_am_i?

puts GoodDog.total_number_of_dogs

puts sparky.age

puts sparky
p sparky
puts "hello i am going to input sparky now with a hashtag type literal whatever thing:  #{sparky}"