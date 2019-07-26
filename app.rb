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
  @boards = Board.all
  erb(:words)
  end

  post '/definitions' do
    "Hello World"
  end
