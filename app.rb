require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    new_sentence = PigLatinizer.new
    @pig_latin = new_sentence.piglatinize(params[:user_phrase])
    erb :results
  end

end