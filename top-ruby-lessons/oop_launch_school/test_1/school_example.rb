class Student
  attr_reader :name

  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected
  attr_reader :grade
end

steve = Student.new("Steve", 99)
bob = Student.new("Robert", 73)

p steve.better_grade_than?(bob)