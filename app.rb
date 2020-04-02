require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions
set :session_secret, "New"

  get '/' do
    erb :index
  end

  post '/names' do
    p1 = Player.new(params[:p1_name])
    p2 = Player.new(params[:p2_name])
    $game = Game.new(p1, p2)
    redirect '/play'
  end
  
  get '/play' do
    @game = $game
    @p2hp = @game.hp
    erb :play
  end

  post '/action' do
    @game = $game
    session[:message] = params[:action]
    @game.attack(@game.player_2)
    redirect '/attack'
  end

  get '/attack' do
    @game = $game
    @message = session[:message]
    erb :attack
  end

end

