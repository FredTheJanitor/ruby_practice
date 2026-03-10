module Conversions
  def self.farenheit_to_celsius(num)
    (num - 32) * 5/9
  end
end

# this way is preferred
value = Conversions.farenheit_to_celsius(32)
# this way works, but dont do it i guess 
another_value = Conversions::farenheit_to_celsius(34)
p value
p another_value 