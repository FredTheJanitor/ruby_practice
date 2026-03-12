class Viking
  attr_accessor :health


  attr_accessor :health
  attr_reader :name, :strength, :beard_length 

  def initialize(name, strength, beard_length, health)
    @name = name
    @strength = strength
    @beard_length = beard_length
    @health = health
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

  
end

brun = Viking.new("Brun", 65, 13, 100)
p brun
grob = Viking.new("Grob", 32, 4, 43)
p grob
brun.attacks(grob)