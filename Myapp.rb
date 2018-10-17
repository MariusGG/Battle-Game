require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.create(params[:player1_name], params[:player2_name])
    redirect '/play'
  end

  get '/play' do
    $game == nil ? (redirect '/') : erb(:play)
  end

  post '/attack' do
    $game.attack
    redirect '/play'
  end

  run! if app_file == $0

end
