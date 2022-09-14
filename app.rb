require 'pry'
require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './classroom'
require_relative './rental'
require_relative './book'
require_relative './menu_options'
require_relative './methods'
require_relative './read_and_write_methods'
require 'json'


class App
  def initialize
    @people = []
    @books = []
    @rentals = []
    read_data
  end

  def run
    menu
    run_options
  end
end
