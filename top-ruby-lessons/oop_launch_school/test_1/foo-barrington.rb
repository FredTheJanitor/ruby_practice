class Parent
  def say_hi
    p "hi from parent."
  end
end

class Child
  def say_hi
    p "b**** im diffrent"
  end

  def send
    p "send from child, DISRUPTING THE UNIVERSE MWAHAHA"
  end
end

child = Child.new
child.say_hi

p Parent.superclass

lad = Child.new
# lad.send :say_hi  # this doesnt work right now

c = Child.new
p c.instance_of? Child
p c.instance_of? Parent