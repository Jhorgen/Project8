require 'pry'

class Definition
  attr_accessor :definition, :word_id, :id
  @@definitions = {}
  @@next_id = 0

  def initialize(definition, word_id, id = nil)
    @definition = definition
    @user = user
    @word_id = word_id
    @id = id || @@next_id += 1
  end

  def self.all
    @@definitions.values()
  end




end


# def self.clear
#   @@messages = {}
#   @@next_id = 0
# end
#
# def self.find(id)
#   @@messages[id]
# end
#
# def self.find_by_board(board_id)
#   @@messages.values.select { |message| message.board_id == board_id }
# end
#
# def save
#   @@messages[self.id] =  Message.new(self.message, self.user, self.board_id, self.id)
# end
#
# def ==(other_message)
#   @message == other_message.message && @board_id == other_message.board_id && @user == other_message.user && @id == other_message.id
# end
