while 1
  puts "Enter a number>>"
  num = Kernel.gets.match(/\d+/)[0]
  puts "#{num} + 1 = #{num.to_i + 1}"
end