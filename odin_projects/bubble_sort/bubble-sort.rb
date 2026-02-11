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
# Define a method called bubble_sort that takes an array as an argument
# 
# Create a variable with a false value to act as a switch to trigger if the array is fully sorted
# 
# iterate over the array with the index recognized as well.
# 
# for each item in the array
# 
# if the current element is greater in value than the next element
# 
# Swap the two elements position or value in the array
# 
# Give the switch a true value (within the conditional)
# 
# end the conditional
# 
# end the for loop
# 
# unless the value of the switch is false
# 
# run the iteration through each of the members of the array again - 1 n value 
# (the largest num should already be at the end)
# 
# end the conditional
# 
# Return the sorted array