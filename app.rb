require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './classroom'
require_relative './rental'
require_relative './book'

class App
  def initialize
    @people = []
    @books = []
    @rentals = []
  end

  def run
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
    options
  end

  def options
    opc = gets.chomp
    case opc
    when '1'
      list_books
    when '2'
      list_people
    when '3'
      add_person
    when '4'
      add_book
    when '5'
      add_rental
    when '6'
      list_rentals
    else
      exit_from_app
    end
  end

  def list_books
    puts 'List of all books:'
    puts "\n"
    if @books.empty?
      puts 'Sorry, no books available at this time.'
      puts "\n"
      sleep(2)
      run
    else
      @books.each_with_index { |book, idx| print "#{idx + 1}) Title: #{book.title}, Author: #{book.author}\n" }
      sleep(2)
    end
    run
  end

  def add_book
    puts 'Please, enter title:'
    title = gets.chomp
    puts 'Please, enter author:'
    author = gets.chomp
    book = Book.new(title, author)
    @books << book
    puts "\n"
    puts 'Congratulations, you created a book!!!'
    puts "\n"
    sleep(2)
    run
  end

  def add_person
    puts 'Please enter age:'
    age = gets.chomp.to_i
    if age < 18
      puts 'For youngers than 18 you need parent permission.'
      puts 'Does this person has parent permission (y/n)?:'
      permission = gets.chomp
      case permission
      when 'n'
        puts 'Sorry, it is not possible to create this person.'
        sleep(2)
        run
      when 'y'
        enroll(age)
      else
        puts 'Please, select "y" or "n".'
        sleep(2)
        run
      end
    else
      enroll(age)
    end
  end

  def enroll(age)
    puts 'Please enter 1 to create a teacher, 2 to create a student:'
    opc = gets.chomp
    case opc
    when '1'
      puts 'Please enter name:'
      name = gets.chomp
      puts 'Please enter teacher specialization:'
      specialization = gets.chomp
      teacher = Teacher.new(age, specialization, name)
      @people << teacher
      puts 'Congratulations, you created a teacher!!!'
      puts "\n"
      sleep(2)
      run
    when '2'
      puts 'Please enter name:'
      name = gets.chomp
      student = Student.new(age, nil, name)
      @people << student
      puts 'Congratulations, you created a student!!!'
      puts "\n"
      sleep(2)
      run
    else
      puts 'Please select 1 or 2, no other options available.'
      sleep(2)
    end
    run
  end

  def list_people
    puts 'List of all registered people:'
    puts "\n"
    if @people.empty? then puts 'Sorry, no people registered yet.'
      puts "\n"
      sleep(2)
      run
    else
      @people.each_with_index do |people, idx|
        print "#{idx + 1}) [#{people.class}] Name: #{people.name}, Age: #{people.age}, ID: #{people.id}\n"
      end
      sleep(2)
    end
    run
  end

  def add_rental
    puts 'Please, select the number of the book you want rent:'
    @books.each_with_index { |book, idx| print "#{idx + 1}) Title: #{book.title}, Author: #{book.author}\n" }
    book_to_rent = gets.chomp.to_i
    puts 'Please, select the number of the person for this rent:'
    @people.each_with_index do |person, idx|
      print "#{idx + 1}) [#{person.class}] Name: #{person.name}, ID: #{person.id}\n"
    end
    person_to_rent = gets.chomp.to_i
    puts 'Please, enter the date to start this rent ((YYY-MM-DD):'
    date = gets.chomp
    rental = Rental.new(date, @books[book_to_rent - 1], @people[person_to_rent - 1])
    @rentals << rental
    puts 'Congratulations, you created a rental!!!'
    sleep(2)
    run
  end

  def list_rentals
    if @people.length.positive?
      puts 'Please, type the ID of the person you want to rent from this list:'
      @people.each_with_index do |people, idx|
        print "#{idx + 1}) [#{people.class}] Name: #{people.name}, ID: #{people.id}\n"
      end
      print 'ID of person: '
      person_id = gets.chomp.to_i
      print "Rentals:\n\n"
      @rentals.each do |rental|
        puts "Date: #{rental.date}, Book: #{rental.book.title}" if rental.person.id == person_id
      end
    else
      print "There are no persons registered\n\n"
    end
    sleep(2)
    run
  end

  def exit_from_app
    puts 'Thank you for using the OOP School Library App.'
    puts "\n" * 2
    sleep(2)
    exit!
  end
end
