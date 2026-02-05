# -----------------------------------------------------------------------------------------------------------
# Lesson from: https://www.theodinproject.com/lessons/ruby-sub-strings
#  
# instructions:
# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second 
# argument.

# It should return a hash listing each substring 
# (case insensitive) that was found in the original string and how many 
# times it was found.
# 
# -----------------------------------------------------------------------------------------------------------

# default list of substrings to check against:
dictionary = %w(that the is are was this re un de on at as in to by for with or from pre dis ing ed ly tion )

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
  # output is like [{}, {}, {"re" => 3}, {}, {"ly" => 2}]
end

# use reduce and merge to combine hashes
def arr_of_hashes_to_hash(array_of_hashes)
# found this method on stack overflow: 
# https://stackoverflow.com/questions/11856407/rails-mapping-array-of-hashes-onto-single-hash
  new_hash = array_of_hashes.reduce(:merge)
  # the above is a shorthand for: 
  # arr.reduce do |acc, el|
  #   acc.merge(el)
  new_hash
end

# make a method that combines the 3 actions above into a cohesive unit
def substrings(string = "", dictionary = [])
  # remove case sensitivity from string and dictionary
  string = string.downcase
  dictionary = dictionary.map { |substring| substring.downcase }
  # from a dictionary of substrings, count how many times each occurs in a string, and output a hash with that count
  array_of_hashes = count_all_substrings(string, dictionary)
  result_hash = arr_of_hashes_to_hash(array_of_hashes)
  result_hash
end


