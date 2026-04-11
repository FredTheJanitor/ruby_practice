#!/usr/bin/env ruby
# this is an outdated and bad example
# protected methods are for being called
# by members of the same class
# to quote Vin Diesel...
# "Family"
class Some
  
  def initialize
    method1
    self.method1
  end

  protected

  def method1
    puts "protected method1 called"
  end

end

s = Some.new
# s.method1