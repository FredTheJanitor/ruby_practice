#!/usr/bin/env ruby

class Animal
  
  def make_noise
    "some noise"
  end

  def sleep
    puts "#{self.class.name} is sleeping"
  end
end

class Dog < Animal
  
  def make_noise
    "woof mothafucka!"
  end
end

class Cat < Animal
  
  def make_noise
    "MEE ow, bitch"
  end
end

[Animal.new, Dog.new, Cat.new].each do |animal|
  puts animal.make_noise
  animal.sleep
end