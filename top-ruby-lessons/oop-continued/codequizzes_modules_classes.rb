class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end
  def batting_average()
    @hits.to_f/@at_bats.to_f
  end
  def on_base_percentage()
    (@hits + @walks).to_f/@at_bats
  end
end

baby_ruth = BaseballPlayer.new(100, 0, 100)
puts "baby ruth's batting average is #{baby_ruth.batting_average}"
baby_dune = BaseballPlayer.new(3, 4, 18)
puts "baby dune's obp is #{baby_dune.on_base_percentage}"

class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
  def first_name()
    @first_name
  end
  def last_name()
    @last_name
  end
  def full_name()
    "#{@first_name} #{last_name}"
  end
end

doone = Person.new("Lil", "Wayne")
puts doone.first_name
puts doone.last_name
puts doone.full_name