require_relative './person.rb'
require_relative './student.rb'
require_relative './teacher.rb'
require_relative './capitalize_decorator.rb'
require_relative './trimmer_decorator.rb'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
capitalizedTrimmedPerson.correct_name
