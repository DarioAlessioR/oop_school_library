require_relative '../teacher'

describe Teacher do
  before(:each) do
    @new_teacher = Teacher.new(45, 'Math', 'Doctor Smith')
  end

  describe '#new teacher' do
    it 'Can create a new teacher' do
      expect(@new_teacher.name).to eql 'Doctor Smith'
    end
  end
end
