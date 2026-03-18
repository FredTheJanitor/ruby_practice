while 1
  puts "Enter a number>>"
  num = Kernel.gets.to_i.to_s.match(/\d+/)[0]
  puts "#{num} + 1 = #{num.to_i + 1}"
end