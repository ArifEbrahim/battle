require 'sinatra/base'
require 'sinatra/reloader'


class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:p1name] = params[:'Player 1 Name']
    session[:p2name] = params[:'Player 2 Name']
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:p1name]
    @player_2_name = session[:p2name]
    erb(:play)
  end

  post '/attack' do
    redirect '/confirmation'
  end

  get '/confirmation' do
    erb(:confirmation)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
