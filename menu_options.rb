def menu
  puts "\n" * 2
  puts 'Welcome to OOP School Library App!!'
  puts "\n"
  puts 'Please, enter a number from the following list to continue:'
  puts "\n"
  puts '1) List all books'
  puts '2) List all people'
  puts '3) Create a person (teacher or student)'
  puts '4) Create a book'
  puts '5) Create a rental'
  puts '6) List all rentals for a given person id'
  puts '7) Exit from app'
  puts "\n"
end

def run_options
  opc = gets.chomp
  case opc
  when '1'
    list_books
  when '2'
    list_people
  when '3'
    person_enrollable?
  when '4'
    add_book
  when '5'
    add_rental
  when '6'
    list_rentals
  else
    write_data
    exit_from_app
  end
end
