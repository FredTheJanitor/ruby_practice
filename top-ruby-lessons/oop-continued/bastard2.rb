while 1
  puts "Enter a number>>"
  num = Kernel.gets.match(/\d+/)[0].to_i
  puts "#{num} + 1 = #{num + 1}"
end