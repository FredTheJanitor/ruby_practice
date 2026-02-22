class GoodDog
  def initialize(name)
    @name = name
  end

  # def name
  #   @name
  # end

  # def name=(name)
  #   @name = name
  #   "setters ignore me, fish want me ;)"
  # end
  # both of these are replaced by the following shorthand:
  attr_accessor :name, :height, :weight

  def change_info(n,h,w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{name} says Arf!"
  end
end

sparky = GoodDog.new("Sparky")
puts sparky.speak

fido = GoodDog.new("Fido")
puts fido.speak

puts sparky.name

sparky.name = "Lucifer Almighty, the Destroyer of God"
puts sparky.name