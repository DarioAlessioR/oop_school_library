require_relative './person'

class Teacher < Person
  attr_accessor :specialization

  def initialize(
    age,
    specialization,
    name = 'Unknown',
    id = nil,
    parent_permission = true
  )
    super(age, name, parent_permission, id)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
