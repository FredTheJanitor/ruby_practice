puts "Enter a number less than |10,000|"
x = gets.chomp.to_i.abs
while x >= 0
  puts x
  x -= 1
  if x.abs >= 10000
    puts "Error: X too high... lol 420"
    break
  end
end
puts "ay bay bay"