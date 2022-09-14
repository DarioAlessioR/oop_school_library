require_relative '../decorator'
require_relative '../person'

describe Decorator do
  before(:each) do
    @new_person = Person.new(22, 'maximilianus')
    @new_decorator = Decorator.new(@new_person)
  end

  describe '#new decorated person' do
    it 'Test correct name method' do
      expect(@new_decorator).to be_instance_of Decorator
    end
  end
end
