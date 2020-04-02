require_relative 'config/environment'

class App < Sinatra::Base


    get "/" do 
        erb :index 
    end 

    post "/piglatinize" do 
        p = PigLatinizer.new
        @translated_phrase = p.piglatinize(params[:user_phrase])
        erb :show
    end 






end