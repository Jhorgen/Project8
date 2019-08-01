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

get ('/definitions') do
  @definitions = Definitions.all
end

post ('/definitions') do
  definition = params[:definition]
  definition = Definition.new(definition)
  definition.save()

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
