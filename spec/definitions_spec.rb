require('rspec')
require('pry')
require('definitions')

describe '#Definition' do

  describe '.all' do
    it("should return an empty array") do
      expect(Definition.all).to(eq([]))
    end
  end




end #class end
