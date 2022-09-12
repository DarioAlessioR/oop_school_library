require 'pry'
require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './classroom'
require_relative './rental'
require_relative './book'
require_relative './menu_options'
require_relative './methods'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def run
    menu
    run_options
  end
end
