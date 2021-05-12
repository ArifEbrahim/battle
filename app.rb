require 'sinatra/base'
require 'sinatra/reloader'

require_relative './lib/player.rb'
require_relative './lib/game.rb'


class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:'Player 1 Name'])
    player2 = Player.new(params[:'Player 2 Name'])
    $game = Game.new(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $game.get_player_name(1)
    @player_2_name = $game.get_player_name(2)
    @player_2_hp = $game.get_player_hp(2)
    erb(:play)
  end

  post '/attack' do
    $game.attack_player(2)
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
