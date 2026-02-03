# instructions:
# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second 
# argument. 

dictionary = %w(that the is are was this re un de on at as in to by for with or from pre dis ing ed ly tion )

def substrings(string = "", array = [])
  # search the string for each substring and find ALL instances
  # create a method on string like find or select
  # use an argument based on the array
  # argument from array: for each member of the array
  # if the string contains that member increase the tally
  # if the string contains multiple of that member increase the
  # tally that number of times
end

# It should return a hash listing each substring 
# (case insensitive) that was found in the original string and how many 
# times it was found.