require_relative '../person'

describe Person do
  before(:each) do
    @new_person = Person.new(25, 'Dario')
  end

  describe '#new person' do
    it 'Can create a new person' do
      expect(@new_person.name).to eql 'Dario'
    end
  end
end
