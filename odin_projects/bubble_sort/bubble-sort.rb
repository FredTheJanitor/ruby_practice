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

my_array = [2,6,1,5,8,9,3,4,7]

def bubble_sort(array)
    last_index = array.size - 1
    while bubble_swap(last_index, array) do
        last_index -= 1
        bubble_swap(last_index, array)
    end
    p array 
end
# swap indexes in a bubble-sort way and return whether any swaps occured
def bubble_swap(last_index, array)
    sort_happened = false
    array.each_with_index do |element, index|
        unless index == last_index || array[index + 1] == nil
            if element > array[index + 1]
                # use parallel assignment to swap variables' positions
                array[index], array[index + 1] = array[index + 1], array[index]
                sort_happened = true
            end
        end
    end
    sort_happened
end

bubble_sort(my_array)