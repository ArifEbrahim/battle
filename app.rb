require 'sinatra/base'
require 'sinatra/reloader'

require_relative './lib/player.rb'


class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:'Player 1 Name'])
    $player2 = Player.new(params[:'Player 2 Name'])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player1.name
    @player_2_name = $player2.name
    @player_2_hp = $player2.hp
    erb(:play)
  end

  post '/attack' do
    $player2.hp -= 10
    redirect '/play'
  end

  # get '/confirmation' do
  #   erb(:confirmation)
  # end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
