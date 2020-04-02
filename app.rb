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
    $game = Game.new
    $p1 = Player.new(params[:p1_name])
    $p2 = Player.new(params[:p2_name])
    redirect '/play'
  end
  
  get '/play' do
    @p1_name = $p1.name
    @p2_name = $p2.name
    @p2hp = $p2.hp
    @result = session[:result]
    erb :play
  end

  post '/action' do
    @p1 = $p1
    @p2 = $p2
    @game = $game

    session[:result] = params[:action]
    @p1name = $p1.name
    @p2name = $p2.name
    @game.attack(@p2)
    redirect '/play'
  end

end

