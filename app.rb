require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'


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

  get '/attack' do
    @game = $game
    erb :attack
  end

  post '/attack' do
    Attack.run($game.opponent)
    if $game.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  get '/game_over' do
    @game = $game
    erb :game_over
  end

  post '/switch' do
    @game = $game
    @game.switch_turn
    redirect '/play'
  end

  run! if app_file == $0
end
