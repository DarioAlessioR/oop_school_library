require_relative '../classroom'

describe Classroom do
  before(:each) do
    @new_classroom = Classroom.new('101')
  end

  describe '#new classroom' do
    it 'Can create a new classroom' do
      expect(@new_classroom.label).to eql '101'
    end
  end
end
