loop do
  puts "what's the best pokemon? (for a do while)"
  answer = gets.chomp
  if answer == "mawile"
    break
  end
end

# matz said this is bad:
# begin
#   puts "Do you want to do that again?"
#   answer = gets.chomp
# end while answer == 'Y'