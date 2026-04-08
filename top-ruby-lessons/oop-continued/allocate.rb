#!/usr/bin/env ruby
class Being
  def initialize name
    @name = name
    puts "#{@name} was created"
  end
end

b1 = Being.new "Stacy"
b2 = Being.allocate

puts b2