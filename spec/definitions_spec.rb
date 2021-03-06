require('rspec')
require('pry')
require('definitions')

describe '#Definition' do

  describe '.all' do
    it("should return an empty array") do
      expect(Definition.all).to(eq([]))
    end
  end

  describe '.clear' do
    it "clears all definitions" do
      def1 = Definition.new("test", 1)
      def1.save()
      def2 = Definition.new("thing", 1)
      def2.save()

      Definition.clear()
      expect(Definition.all).to eq([])
    end
  end

  describe '#save' do
    it('saves definition') do
      def1 = Definition.new("thingy", 1)
      def1.save()
      expect(Definition.all).to(eq([def1]))
    end
  end

  describe '#==' do
  it "should only compare the definitions by their ' definition ' designation" do
    def1 = Definition.new('some', 1, 1)
    def2 = Definition.new('some', 1, 1)
    binding.pry
    expect(def1 == def2).to eq(true)
  end
end


end #class end
