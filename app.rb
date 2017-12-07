require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    user_input = params[:user_phrase]
    @piglatinizer = PigLatinizer.new
    @user_input = user_input 

    erb :results
  end
end
