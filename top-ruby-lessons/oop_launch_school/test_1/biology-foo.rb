module Swimmable
  def swim
    "I'm swimmin"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable
end

class Mammal < Animal  
end

class Cat < Mammal  
end

class Dog < Mammal
  include Swimmable
end

class Pug < Dog
end

sparky = Dog.new
neemo = Fish.new
uggles = Pug.new
paws = Cat.new

p sparky.swim
p neemo.swim
p uggles.swim
p paws.swim
