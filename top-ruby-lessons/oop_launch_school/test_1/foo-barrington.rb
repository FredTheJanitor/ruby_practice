class Parent
  def say_hi
    p "hi from parent."
  end
end

class Child
  def say_hi
    p "b**** im diffrent"
  end
end

child = Child.new
child.say_hi

p Parent.superclass