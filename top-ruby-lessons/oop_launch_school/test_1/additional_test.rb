class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class GoodDog < Animal
  def initialize(color)
    super
    @color = color
  end
end

bruno = GoodDog.new("brown")
p bruno.name

class BadDog < Animal
  attr_accessor :age

  def initialize(age, name)
    super(name)
    self.age = age
  end
end

bear = BadDog.new(2, "bear")
p bear.name
p bear.age