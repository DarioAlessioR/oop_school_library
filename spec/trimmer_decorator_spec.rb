require_relative '../trimmer_decorator'
require_relative '../person'

describe TrimmerDecorator do
  before(:each) do
    @new_person = Person.new(22, 'maximilianus')
    @new_trimmer = TrimmerDecorator.new(@new_person)
  end

  describe '#new trimmed person' do
    it 'Test correct name method' do
      expect(@new_trimmer.correct_name).to eq 'maximilian'
    end
  end
end
