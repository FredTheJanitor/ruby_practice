module DoMove
  def do_move
    puts "do that move cause you love to groove"
  end
end

class MyClass
  include DoMove
end

my_object = MyClass.new

my_object.do_move