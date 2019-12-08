require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/' do 
    pl = PigLatinizer.new 
    @piglatin = pl.piglatinize(params[:user_phrase])
    erb :result
  end
end