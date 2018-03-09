require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/attack'


class Battle < Sinatra::Base
  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    name1 = Player.new(params[:name1])
    name2 = Player.new(params[:name2])
    @game = Game.create(name1, name2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    erb :attack
  end

  post '/attack' do
    Attack.run(@game.opponent)
    if @game.game_over?
      redirect '/game_over'
    else
      redirect '/attack'
    end
  end

  get '/game_over' do
    erb :game_over
  end

  post '/switch' do
    @game.switch_turn
    redirect '/play'
  end

  run! if app_file == $0
end
