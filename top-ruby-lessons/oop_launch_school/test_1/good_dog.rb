class GoodDog
  def initialize(name)
    @name = name
  end

  # def name
  #   @name
  # end

  # def name=(name)
  #   @name = name
  #   "suck the grapes"
  # end
  # both of these are replaced by the following shorthand:
  attr_accessor :name

  def speak
    "#{@name} says Arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak

puts sparky.name

sparky.name = "Lucifer Almighty, the Destroyer of God"
puts sparky.name