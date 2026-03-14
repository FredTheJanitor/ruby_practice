class Viking
  attr_accessor :health
  attr_reader :name, :strength, :beard_length

  # @@starting_health = 100

  def initialize(name, health, beard_length, strength)
    @name = name
    @strength = strength
    @beard_length = beard_length
    @health = health
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

  def attacks(enemy)
    puts "#{name} attacks #{enemy.name} and does #{strength} damage"
    enemy.takes_damage(strength)
    if enemy.health <= 0
      puts "#{enemy.name} was slain by #{name}"
      enemy.health = 0 
    end
  end
  def takes_damage(damage_amount)
    @health -= damage_amount
      if @health <= 0
        @health = 0
        puts "#{name} died a warrior's death!"
      end
  end
  def sleep
    self.health += 1 unless health >=99
    puts "#{name} took a nap, #{name}'s health is now #{health}"
  end

  
end

brun = Viking.new("Brun", 65, 18, 13)
p brun
grob = Viking.new("Grob", 32, 7, 4)
p grob
brun.attacks(grob)
grob.sleep
p grob

sten = Viking.create_warrior("Sten")
puts sten.inspect

warrior1 = Viking.create_warrior(Viking.random_name)
p warrior1