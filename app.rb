require 'sinatra/base'
require './lib/player'
require './lib/game'


class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    name1 = Player.new(params[:name1])
    name2 = Player.new(params[:name2])
    $game = Game.new(name1, name2)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/switch' do
    @game = $game
    @game.switch_turn
    erb :switch
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.opponent_of(@game.turn))
    erb :attack
  end

  run! if app_file == $0
end
