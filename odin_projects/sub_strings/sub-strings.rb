# instructions:
# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second 
# argument. 

dictionary = %w(that the is are was this re un de on at as in to by for with or from pre dis ing ed ly tion )
# so based on this list of characters, I need to check the string for each one of these character combos 
# and get all of them counted
# lets try select

# uses regex to find all instances of a substring within another string
# substring = dictionary.each
def substring_counter(string, substring)
  array_of_matches = string.scan(/(?=(#{substring}))/)
  array_of_matches.tally.transform_keys { |key| key[0] }
  # output is like {"substring" => 3}
end

# use each to create an array of these substrings from regex counter
def count_all_substrings(string, dictionary)
  array_of_counts = dictionary.map do |substring|
    substring_counter(string, substring)
  end
  array_of_counts
end

# this should output an array of hashes: need to flatten it to 1d
# this calls for reduce:

def arr_of_hashes_to_hash(array_of_hashes)
# found this method on stack overflow: 
# https://stackoverflow.com/questions/11856407/rails-mapping-array-of-hashes-onto-single-hash
# looks pretty clean lol - need to look into how merge works more.
  new_hash = array_of_hashes.reduce(:merge)
  new_hash
end

def substrings(string = "", dictionary = [])
  
end



# It should return a hash listing each substring 
# (case insensitive) that was found in the original string and how many 
# times it was found.