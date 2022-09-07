require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'
require_relative './classroom'
require_relative './rental'
require_relative './book'

#person = Person.new(22, 'maximilianus')
#person.correct_name
#capitalized_person = CapitalizeDecorator.new(person)
#capitalized_person.correct_name
#capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
#capitalized_trimmed_person.correct_name

#pp = Person.new(22, 'pepe')
#puts pp.age

def main
    salon = Classroom.new('Salon A')
    p salon

    salon_b = Classroom.new('Salon B')
    p salon_b

    salon_c = Classroom.new('Salon C')
    p salon_c

    estud = Student.new(10, salon, 'Jose')
    p estud
    
    salon_b.add_student(estud)
    p salon_b
    p estud

    profe = Teacher.new(55, 'Math, 'Loco')
    p profe

    libro = Book.new('Sapiens', 'Yuval Harari')
    puts libro.title
    puts libro.author

    renta = Rental.new('2022-01-01', libro, estud)
    puts renta.book.title
    puts renta.person.name
    puts renta.date
end

main
