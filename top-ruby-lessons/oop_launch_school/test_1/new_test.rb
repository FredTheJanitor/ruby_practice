class Animal
  def speak
    "hey there"
  end
end

class GoodDog < Animal
  attr_accessor :name

  def initialize(n)
    self.name = n
  end

  def speak
    "I am #{self.name} and I'm saying 'hey there'"
  end

end

class Cat < Animal
end

sparky = GoodDog.new("Sparky")
paws = Cat.new
# checks most local class before super class for method
puts sparky.speak
puts paws.speak