# attr_accessor :name, :height, :weight
# 
# Ruby's syntactic sugar for invoking 
# methods can make accessor methods 
# seem a bit like "magic," but they're 
# not. How could we rewrite the above 
# attribute accessor to prove to 
# ourselves that attr_accessor is 
# actually just a method call?

class TheClassyClass
  
  def name
    @name
  end

  def name=(name)
    @name = name
  end

  def height
    @height
  end

  def height=(height)
    @height = height
  end

  def weight
    @weight
  end

  def weight=(weight)
    weight
  end

end

my_classy_object = TheClassyClass.new
my_classy_object.name = "Shiny"
puts my_classy_object.name