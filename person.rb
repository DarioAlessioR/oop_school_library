require './nameable'
require './rental'

class Person < Nameable
  attr_reader :id, :rentals
  attr_accessor :name, :age

  def initialize(
    
    age,
    name = 'Unknown',
    parent_permission = true,
    id = nil
  )
    super()
    @parent_permission = parent_permission
    @name = name
    @age = age
    @id = id || Random.rand(1..1000)
    @rentals = []
  end

  def can_use_services?
    of_age? || @parent_permission
  end

  def correct_name
    @name
  end

  def add_rental(book, date)
    Rental.new(book, date, self)
  end

  private

  def of_age?
    return true if age >= 18

    false
  end
end
