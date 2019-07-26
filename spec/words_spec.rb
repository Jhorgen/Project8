require('rspec')
require('pry')
require('words')

describe '#Word' do

  describe '.all' do
    it("should return an empty array") do
      expect(Word.all).to(eq([]))
    end
  end




end #class end
