require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do

      erb :"pirates/new"
    end

    post '/pirates' do

    @pirate = Pirate.new(params[:pirate])
    @ships = []

    params[:pirate][:ships].each do |attr|
    @ships << Ship.new(attr)
    end

    erb :"pirates/show"
    end
    
  end
end
