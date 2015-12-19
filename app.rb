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
    if @game.turn == @game.player_1
      @game.hit(@game.player_2)
    else
      @game.hit(@game.player_1)
    end
    erb :attack
  end


  run! if app_file == $0
end
