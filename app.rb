require 'sinatra/base'
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    @player_1_hp = $player_1.hp
    @player_2_hp = $player_2.hp
    erb :play
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    $game = Game.new
    redirect '/play'
  end

  get "/attack" do
    @player_1 = $player_1
    @player_2 = $player_2
    $game.hit(@player_2)
    erb :attack
  end


  run! if app_file == $0
end
