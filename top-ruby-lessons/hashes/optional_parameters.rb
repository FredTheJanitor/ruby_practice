def greeting(name, options = {})
  if options.empty?
    puts "Hi, my name is #{name}"
  else
    puts "Hi, my name is #{name} & I am #{options[:age]}" +
      " years old and I live in #{options[:city]}."
  end
end

greeting("Joe Shmoe")
# oh shit, you dont need {} when passing symbol based key value pairs to a method
greeting("Satan", age: 6666, city: "Hell")
