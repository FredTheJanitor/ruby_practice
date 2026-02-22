class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end  

  def change_info(n,h,w)
    name = n
    height = h
    weight = w
  end

  def speak
    "#{name} says Arf!"
  end

  def info
    "#{name} weighs #{weight} and is #{height} tall."
  end
end

sparky = GoodDog.new("Sparky", "8 inches", "7 lbs")
puts sparky.speak

fido = GoodDog.new("Fido", "1000 feet", "1,000,000 lbs")
puts fido.speak

puts sparky.info

sparky.change_info("Lucifer Almighty, the Destroyer of God", "6.6 inches", "6.666 lbs")

puts sparky.info