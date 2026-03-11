class Viking
  def initialize(name, strength, beard_length, health)
    @name = name
    @strength = strength
    @beard_length = beard_length
    @health = health
  end
end

brun = Viking.new("Brun", 65, 13, 100)
p brun