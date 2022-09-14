require_relative '../book'

describe Book do
  before(:each) do
    @new_book = Book.new('Sapiens', 'Yuval Noah H.')
  end

  describe '#new book' do
    it 'Can create a new book' do
      expect(@new_book.title).to eql 'Sapiens'
    end
  end
end
