# instructions:
# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second 
# argument. 

dictionary = %w(that the is are was this re un de on at as in to by for with or from pre dis ing ed ly tion )

def substrings(string = "", array = [])
  substring_count = array.reduce({}) do |tally, substring|
    number_of_substrings = string.scan(substring)
    tally[substring] = number_of_substrings
  end
  substring_count
end

# It should return a hash listing each substring 
# (case insensitive) that was found in the original string and how many 
# times it was found.