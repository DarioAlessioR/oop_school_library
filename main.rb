require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'
require_relative './classroom'
require_relative './rental'
require_relative './book'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
capitalized_trimmed_person.correct_name
