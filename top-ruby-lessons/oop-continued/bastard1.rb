values = [42, "a", "t", 9, 5, 213213, 8.7, "karen", "Libya", "Mars", "12", 98, rand + rand, {:dog => "cat"}, 100, nil, 200.0000, Object, 680, 3.14, "Goat", 78, true].shuffle
while values.length > 0
  a = values.pop
  b = values.pop

  begin
    a + b
  rescue
    puts "cant add variables a (#{a.class}) and b (#{b.class})" 
  else
    puts "a + b is #{a+b}"
  end
end

