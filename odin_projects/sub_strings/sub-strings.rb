# instructions:
# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second 
# argument. 

dictionary = %w(that the is are was this re un de on at as in to by for with or from pre dis ing ed ly tion )
# so based on this list of characters, I need to check the string for each one of these character combos 
# and get all of them counted
# lets try select



dictio
def substrings(string = "", array = [])
  substring_count = array.reduce({}) do |tally, substring|
    number_of_substrings = string.scan(substring)
    p tally
    tally[substring] = number_of_substrings
  end
  substring_count
end

#ok so tally is more like ["a" "b" "c" ] => { "a" => 1, "b" => 2 etc}
#

string = gets.chomp
substrings(string, dictionary)

# It should return a hash listing each substring 
# (case insensitive) that was found in the original string and how many 
# times it was found.