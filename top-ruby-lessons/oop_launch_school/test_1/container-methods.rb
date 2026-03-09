module Conversions
  def self.farenheit_to_celsius(num)
    (num - 32) * 5/9
  end
end

value = Conversions.farenheit_to_celsius(32)
p value