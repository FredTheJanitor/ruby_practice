class Viking
  attr_accessor :health
  attr_reader :name, :strength, :beard_length

  @@starting_health = 100

  def initialize(name, strength, beard_length)
    @name = name
    @strength = strength
    @beard_length = beard_length
    @health = @@starting_health
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

brun = Viking.new("Brun", 65, 13)
p brun
grob = Viking.new("Grob", 32, 4)
p grob
brun.attacks(grob)
grob.sleep
p grob
