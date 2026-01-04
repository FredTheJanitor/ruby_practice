students = %w(Greyson Logan Steve Tony)

students.each_with_index do |student, i| 
  puts student
  puts i
end

def each(array, &blk)
  i = 0
  while i < array.count
    el = array[i]
    # puts "I'm iterating: i == #{i}, el == #{el}"
    i += 1
  end
end

each(students) do |student|
  puts student
end