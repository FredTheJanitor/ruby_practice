class GoodDog
  attr_accessor :name, :height, :weight
  def initialize(name, height, weight)
    self.name = name
    self.height = height
    self.weight = weight
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "I am a string with name: #{self.name} height: #{self.height} and weight: #{self.weight}"
  end

  # this one is deep
  def what_is_self
    self
  end

end
  sparky = GoodDog.new("Sparkison", "1000 miles", "a ton of feathers")
  p sparky.what_is_self