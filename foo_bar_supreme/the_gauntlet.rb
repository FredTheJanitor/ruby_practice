# i = 0
# loop do
#   puts "i is #{i}"
#   i += 1
#   break if i == 10
# end

# used until:
# i = 0
# until i == 10
#   puts "i is #{i}"
#   i += 1
# end
# 
# 2--------------------------------------

# Given:
# i = 0
# while i < 10 do
#  puts "i is #{i}"
#  i += 1
# end
# 
#Used times
# i = 0
# 10.times do
#   puts "i is #{i}"
#   i += 1
# end
# 
#3 --------------------------------------
#Given:
# while gets.chomp != "yes" do
#   puts "Are we there yet?"
# end

#  used (false) do while
# loop do 
#   puts "Are we there yet?"
#   if gets.chomp == "yes"
#     break
#   end
# end
# 
#4 --------------------------------------
#
# i = 0
# until i >= 10 do
#  puts "i is #{i}"
#  i += 1
# end
# 
# used a while loop
# i = 0
# while i < 10 do
#   puts "i is #{i}"
#   i += 1
# end
# 
#5 ------------------------------------
#
# until gets.chomp == "yes" do
#   puts "Do you like Pizza?"
# end

# used loop do and unless, then added next and break
# loop do
#   unless gets.chomp == "yes"
#     puts "yu like the Za ma boii?"
#     next
#   end
#   break
# end
# 
#6 ------------------------------------

# for i in 0..5
#   puts "#{i} zombies incoming!"
# end
# i = 0
# 6.times do
#   puts "#{i} zombies incoming!"
#   i += 1
# end
# 
#7 ------------------------------------
#
# 5.times do
#   puts "Hello, world!"
# end

# for i in 1..5
#   puts "Hello, world!"
# end
# 
#8 ------------------------------------
# 5.times do |number|
#   puts "Alternative fact number #{number}"
# end

for number in 0...5
  puts "Alternative fact number #{number}"
end