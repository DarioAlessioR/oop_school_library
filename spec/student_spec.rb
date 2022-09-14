require_relative '../student'

describe Student do
  before(:each) do
    @new_student = Student.new(
      22,
      '102',
      'Pepe'
    )
  end

  describe '#new student' do
    it 'Can create a new student' do
      expect(@new_student.name).to eql 'Pepe'
    end
  end
end
