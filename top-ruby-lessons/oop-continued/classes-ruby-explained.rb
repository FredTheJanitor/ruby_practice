class Person
  attr_accessor :name
  MAX_HEALTH = 120
  def heal
    self.health += 1 unless self.health + 1 > MAX_HEALTH
  end

  def initialize(name)
    @name = name
  end

  def say_hi
    puts "hi my name is #{name}"
  end
end

class Viking < Person
  attr_accessor :health
  attr_reader :name, :strength, :beard_length

  # @@starting_health = 100

  def initialize(name, health, beard_length, strength)
    @name = name
    @strength = strength
    @beard_length = beard_length
    @health = health
    @dead = false
  end

  def self.create_warrior(name)
    beard_length = rand * 30 + 6
    health = [beard_length * 5, 120].min
    strength = [beard_length/2, 10].min
    Viking.new(name, health, beard_length, strength)
  end

  def self.random_name
    ["Erik", "Lars", "Leif", "Grud", "Brok", "Steave", "Minchin", "Harl", "Grob", "Brun", "Florgish", "Deen"].sample
  end

  def self.silver_to_gold(silver_pieces)
    silver_pieces / 10
  end

  class << self #im diffrent yea im diffrent
    def gold_to_silver(gold_pieces)
      gold_pieces * 10
    end
  end

  def heal
    # self.health = [self.health + 5, MAX_HEALTH].min
    10.times {super}
    puts "Ready for battle!"
  end

  def attack(enemy)
    puts "#{name} attacks #{enemy.name} and does #{strength} damage"
    enemy.take_damage(strength)
    if enemy.health <= 0
      puts "#{enemy.name} was slain by #{name}"
    end
  end
  
  def take_damage(damage_amount)
    @health -= damage_amount
      die if @health <= 0
  end
  
  def sleep
    self.health += 1 unless health >=99
    puts "#{name} took a nap, #{name}'s health is now #{health}"
  end

  def dead?
    @dead
  end

  protected

  private

  def die
    @health = 0
    @dead = true
    puts "#{name} died a warrior's death and is headed to Valhalla!"
  end
  
end

brun = Viking.new("Brun", 65, 18, 13)
p brun
grob = Viking.new("Grob", 32, 7, 4)
p grob
brun.attack(grob)
grob.sleep
p grob

sten = Viking.create_warrior("Sten")
puts sten.inspect

warrior1 = Viking.create_warrior(Viking.random_name)
p warrior1
warrior1.say_hi

grob.heal
p grob

3.times do 
  brun.attack(grob)
end

# brun.die wont work because made private
