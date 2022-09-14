def write_data
  write_people_data
  write_books_data
  write_rentals_data
end

def read_data
  read_people_data
  read_book_data
  read_rentals_data
end

def people_data(people)
  people_data_array = []
  people.each do |item|
    if item.instance_of?(Student)
    people_data_array << {
      class: item.class, age: item.age, name: item.name, clasroom: @clasroom,
      id: item.id
    }
    else
    people_data_array << {
      class: item.class, age: item.age, name: item.name,
      specialization: item.specialization, id: item.id
    }
    end
  end
  people_data_array
end

def books_data(books)
  books_data_array = []
  books.each do |item|
    books_data_array << {
      title: item.title,
      author: item.author
    }
  end
  books_data_array
end

def rentals_data(rentals)
  rentals_data_array = []
  rentals.map do |item|
    rentals_data_array << {
      date: item.date,
      book: item.book.title,
      person: item.person.name,
      id: item.person.id
    }
  end
  rentals_data_array
end


def write_people_data
  File.write('Data/people.json', JSON.pretty_generate(people_data(@people)))
end

def write_books_data
  File.write('Data/books.json', JSON.pretty_generate(books_data(@books)))
end

def write_rentals_data
  File.write('Data/rentals.json', JSON.pretty_generate(rentals_data(@rentals)))
end

def read_people_data
  if File.exist?('Data/people.json')
    people_file = File.open('Data/people.json')
    data = JSON.parse(people_file.read)
    data.each do |item|
      if item['class'] == 'Student'
        @people << Student.new(item['age'], item['classroom'], item['name'], item['id'])
      else
        @people << Teacher.new(item['age'], item['specialization'], item['name'], item['id'])
      end
    end
  else
    @people = []
  end
end

def read_book_data
  if File.exist?('Data/books.json')
    books_file = File.open('Data/books.json')
    data = JSON.parse(books_file.read)
    data.each do |book|
      @books << Book.new(book['title'], book['author'])
    end
    books_file.close
  else
    @books = []
  end
end

def read_rentals_data
  if File.exist?('Data/rentals.json')
    rentals_file = File.open('Data/rentals.json')
    data = JSON.parse(rentals_file.read)
    data.each do |item|
      @rentals << Rental.new(item['date'], item['book'], item['person'], item['id'])
    end
    rentals_file.close
  else
    @rentals = []
  end
end
