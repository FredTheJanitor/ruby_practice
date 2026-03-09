module Walkable
  def walk
    "I'm Luke, luke sky walker"
  end
end

module Swimmable
  def swim
    "hello i am doin a good swim swim"
  end
end

module Climable
  def climb
    "I'm climbin brotha"
  end
end

class Animal
  include Walkable
  include Swimmable

  def speak
    "greetings, an animal is what I am!"
  end
end

puts "--Animal path fpr method look up (ancestors)--"
puts Animal.ancestors

fido = Animal.new

puts fido.speak
puts fido.walk
puts fido.swim