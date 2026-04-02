while 1
  begin
    puts "Enter a number>>"
    if num = Kernel.gets.match(/\d+/)
      num = num[0]
      puts "#{num} + 1 = #{num.to_i + 1}"
    else
      puts "Erroneous input! Try again..."
    end
    puts "Press ctrl-C when you get bored"
  rescue Interrupt => e
    puts "what is Signal.trap??"
  end
end