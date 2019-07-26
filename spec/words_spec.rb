require('rspec')
require('pry')
require('words')

describe '#Word' do

  describe '.all' do
    it("should return an empty array") do
      expect(Word.all).to(eq([]))
    end
  end

  describe '#==' do
  it "it should only compare the words by their ' word ' designation" do
    word1 = Word.new('tester!')
    word2 = Word.new('tester!')
    expect(word1 == word2).to eq(true)
  end
end

  describe '#save' do
    it('saves word') do
      word = Word.new("thingy")
      word.save()
      expect(Word.all).to(eq([word]))
    end
  end

  describe '.clear' do
    it "clears all words" do
      word1 = Word.new("test")
      word1.save()
      word2 = Word.new("this")
      word2.save()
      Word.clear()
      expect(Word.all).to eq([])
    end
  end


end #class end
