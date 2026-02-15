module Speak
  def speak(sound)
    puts sound
  end
end

class GoodDog
  def speak(sound)
    puts "and the dog said $#{sound}"
  end
  include Speak
end

class HumanBeing
  include Speak
end

dave = HumanBeing.new
sparky = GoodDog.new


sparky.speak("woof muthafucka")
dave.speak("howdy")
puts GoodDog.ancestors
puts HumanBeing.ancestors

