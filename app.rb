require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @game = $game
    erb :play
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get "/attack" do
    @game = $game
    @game.hit(@game.player_2)
    p @game.player_2.hp
    erb :attack
  end


  run! if app_file == $0
end
