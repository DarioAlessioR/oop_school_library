require_relative '../capitalize_decorator'
require_relative '../person'

describe CapitalizeDecorator do
  before(:each) do
    @new_person = Person.new(22, 'maximilianus')
    @new_capitalize = CapitalizeDecorator.new(@new_person)
  end

  describe '#new capitalized person' do
    it 'Test correct name method' do
      expect(@new_capitalize.correct_name).to eq 'Maximilianus'
    end
  end
end
