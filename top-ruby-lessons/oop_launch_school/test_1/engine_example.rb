class Engine
  def start
    puts "vroom vroom"
  end
end

class Car
  def initialize
    @engine = Engine.new
  end
  def start
    @engine.start
  end
end
