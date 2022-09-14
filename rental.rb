require './book'
require './person'

class Rental
  attr_accessor :date, :title, :id

  def initialize(date, title, id)
    @date = date
    @title = title
    @id = id
    @rentals = []
  end

  def belongs_to
    @rentals << self
    book.rentals << self unless book.rentals.include?(self)
    person.rentals << self unless person.rentals.include?(self)
  end
end
