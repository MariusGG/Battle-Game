require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions


  before { @game = Game.game }

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    Game.create(player_1, player_2)
    redirect '/play'
  end

  post '/attack' do
    redirect '/attacked'
  end

  get '/attacked' do
    erb(:attack)
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0
end
