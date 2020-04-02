require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :index
    end

    post '/piglatinize' do
        pig_latin = PigLatinizer.new
        @piglatin = pig_latin.piglatinize(params[:user_phrase])

        erb :results
    end
end