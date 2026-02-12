# Project is part of the Odin Project: https://www.theodinproject.com/lessons/ruby-bubble-sort
# --------------------------------------------------------------------------------------------
# Instructions: 
# Build a method #bubble_sort that takes an array and returns a sorted array. It must use the 
# bubble sort methodology (using #sort would be pretty pointless, wouldn’t it?).
# --------------------------------------------------------------------------------------------

my_array = [2,6,1,5,8,9,3,4,7]

def bubble_sort(array)
    last_index = array.size - 1

    # After Project Reflection:
    # this doesnt actually do what I thought it did, its running twice and inefficient
    while bubble_swap(last_index, array) do
        last_index -= 1
        bubble_swap(last_index, array)
    end
    # a more normal way in ruby to do the above is like this:
    # loop do
    # sort_happened = false
    # break unless sort_happened
    # 
    # This is how ruby is written and is like, "stylish" or "idiomatic" lol
    array 
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

p bubble_sort(my_array)
# odin example
p bubble_sort([4,3,78,2,0,2])
# Already sorted
p bubble_sort([1,2,3,4,5])
# Reverse sorted
p bubble_sort([10,9,8,7,6,5,4,3,2,1])
# Empty
p bubble_sort([])
# One element
p bubble_sort([1])
# Two element
p bubble_sort([2,1])
# Same elements
p bubble_sort([3,3,3,3,3])
# Negatives
p bubble_sort([-5,0,-2,3,1])