begin
  while 1
  
    puts "Enter a number>>"
    if num = Kernel.gets.match(/\d+/)
      num = num[0]
      puts "#{num} + 1 = #{num.to_i + 1}"
    else
      puts "Erroneous input! Try again..."
    end
    puts "---------------------------------------"
    puts "\tPress ctrl-C when you get bored"
    puts "---------------------------------------"  
  end
rescue Interrupt => e
    puts "\twhat is Signal.trap??"
end