require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    @players = params[:players]
    erb(:play)
  end

end
