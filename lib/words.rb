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

  def self.clear
    @@words = {}
    @@next_id = 0
  end

  def save
    @@words[self.id] =  Word.new(self.word, self.id)
  end


  def ==(word)
    self.word() == word.word()
  end

end
