require 'pry'

class Definition
  attr_accessor :definition, :word_id, :id
  @@definitions = {}
  @@next_id = 0

  def initialize(definition, word_id, id = nil)
    @definition = definition
    @word_id = word_id
    @id = id || @@next_id += 1
  end

  def self.all
    @@definitions.values()
  end

  def self.clear
    @@definitions = {}
    @@next_id = 0
  end

  def save
    @@definitions[self.id] =  Definition.new(self.definition, self.word_id, self.id)
  end

  def ==(example_def)
    @definition == example_def.definition && @word_id == example_def.word_id &&  @id == example_def.id
  end

end
