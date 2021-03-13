require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base

    get '/' do 
      erb :user_input
    end
  
    post '/piglatinize' do 
      # phrase = PigLatinizer.new
      @text = PigLatinizer.new(params[:user_phrase])

      erb :piglatinize
    end
  
  end 