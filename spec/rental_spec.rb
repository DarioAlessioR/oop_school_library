require_relative '../rental'

describe Rental do
  before(:each) do
    @new_rental = Rental.new('2022-09-14', 'Sapiens', 571)
  end

  describe '#new rental' do
    it 'Can create a new rental' do
      expect(@new_rental.title).to eql 'Sapiens'
    end
  end
end
