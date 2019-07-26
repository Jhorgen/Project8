require 'pry'

class Word
  attr_accessor :word, :id
  @@words = {}
  @@nextId = 0

  def initialize(word, id=nil)
    @word = word
    @id = id || @@nextId += 1
  end

  def self.all
    @@words.values()
  end

  def ==(word)
    self.word() == word.word()
  end

  def save
    @@words[self.id] =  Word.new(self.word, self.id)
  end

  def self.clear
    @@words = {}
    @@next_id = 0
  end


end

#    def self.find(id)
#   @@boards[id]
# end
#
# def self.clear
#   @@boards = {}
#   @@nextId = 0
# end
# def save
#   @@boards[self.id] = Board.new(self.name,self.id)
# end
# #for testing
# def ==(board_to_compare)
#   self.name() == board_to_compare.name()
# end
#
# def messages
#   Message.find_by_board(self.id)
# end
