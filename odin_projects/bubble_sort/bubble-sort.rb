# Project is part of the Odin Project: https://www.theodinproject.com/lessons/ruby-bubble-sort
# --------------------------------------------------------------------------------------------
# Instructions: 
# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the 
# bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
# --------------------------------------------------------------------------------------------
# 
# Planning/ Ideation:
# Input is an array, Output is an array.
# Using a specific mechanism to order each individual item
# reassigning indexes or swapping items in an array is going to be key here
# iteration and a check to see if its sorted is key as well.
# Optimization is a possible reach point, but probably beyond the necessary scope to get what
# I need to out of this project
# 
# --------------------------------------------------------------------------------------------
# Pseudo-Code
# 
# Define a variable that points to an array to be sorted
# 
my_array = [2,6,1,5,8,9,3,4,7]
# 
# Define a method called bubble_sort that takes an array as an argument
# 
def bubble_sort(unsorted_array)
    # Create a variable with a false value to act as a switch to trigger if the array is fully sorted
    sort_happened = false
    # iterate over the array with the index recognized as well.
    unsorted_array.each_with_index do |element, index|
        # for each item in the array
        # if the current element is greater in value than the next element
        if element > unsorted_array[index + 1]
            # Swap the two elements position or value in the array
            unsorted_array[index], unsorted_array[index + 1] = unsorted_array[index + 1], unsorted_array[index]
            # Give the switch a true value (within the conditional)
            sort_happened = true
            # end the conditional
        end
        # end the for loop      
    end
# unless the value of the switch is false
# 
# run the iteration through each of the members of the array again - 1 n value 
# (the largest num should already be at the end)
# 
# end the conditional
# 
# Return the sorted array
  
end
