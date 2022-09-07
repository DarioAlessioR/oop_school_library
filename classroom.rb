class classroom
  attr_accessor :lable
  attr_reader :students

  def initialize(lable)
    @lable = lable
    @students = []
  end

  def add_student(student)
    @students.push(student)
    student.classroom = self
  end
end