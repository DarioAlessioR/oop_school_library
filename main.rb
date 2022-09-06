require_relative './person'
require_relative './student'
require_relative './teacher'
require_relative './capitalize_decorator'
require_relative './trimmer_decorator'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalizedPerson = CapitalizeDecorator.new(person)
capitalizedPerson.correct_name
capitalizedTrimmedPerson = TrimmerDecorator.new(capitalizedPerson)
capitalizedTrimmedPerson.correct_name
