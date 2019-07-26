require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/words.rb')
require('./lib/definitions.rb')

get ('/') do
  @words = Word.all
  erb(:words)
end

get ('/words') do
  @words = Word.all
  erb(:words)
  end

post ('/words') do
    word = params[:word]
    word = Word.new(word)
    word.save()
    redirect to('/words')
end


    get ('/words/:id/definitions') do
      @word_id = params[:id].to_i
      erb(:definitions)
    end
    #
    # post ('/boards/:id/messages') do
    #   user = params[:user]
    #   @board = Board.find(params[:id].to_i)
    #   message_text = params[:message]
    #   board_id = params[:id].to_i
    #   new_message = Definition.new(message_text, word_id)
    #   new_message.save()
    #   redirect to("/words/#{word_id}")
    # end
