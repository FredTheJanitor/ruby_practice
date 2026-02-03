# instructions:
# Implement a method #substrings that takes a word as the first argument 
# and then an array of valid substrings (your dictionary) as the second 
# argument. 

dictionary = %w(that the is are was this re un de on at as in to by for with or from pre dis ing ed ly tion )

def substrings(string = "", array = [])
  # search the string for each substring and find ALL instances
  # create a method on string like find or select
  # 
  # It seems like select or find_all have the properties of what
  # im looking for, but they dont work on strings.
  # 
  # How can I convert the string to an array where it can still be
  # searched for the specific combination of substrings still in
  # order?
  # 
  # well, split will do it on white space, that seems like what
  # we're doing i think
  #
  # ok so there is a method called include that just looks for
  # substrings
  # if a member of array
  # what does a member of array mean
  # array.each in its most basic sense
  substring_count = array.reduce({}) do |tally, substring|
    if string.include?(substring)
      tally[substring] += 1
    end
    tally
  end
    


  # is within a word of string
  # tally
    # now i need to check if each word within the string is in
    # the array. 
    # so i need to search the word for each member
    # of the array
  #
  # use an argument based on the array
  # argument from array: for each member of the array
  # if the string contains that member increase the tally
  # if the string contains multiple of that member increase the
  # tally that number of times
end

# It should return a hash listing each substring 
# (case insensitive) that was found in the original string and how many 
# times it was found.