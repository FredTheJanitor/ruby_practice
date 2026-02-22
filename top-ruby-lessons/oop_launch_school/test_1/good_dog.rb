class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = h
  end  

  def change_info(n,h,w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says Arf!"
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky = GoodDog.new("Sparky", "6.9 inches", "6 lbs")
puts sparky.speak

fido = GoodDog.new("Fido", "1000 feet", "1,000,000 lbs")
puts fido.speak

puts sparky.name

sparky.name = "Lucifer Almighty, the Destroyer of God"
puts sparky.name

puts sparky.info