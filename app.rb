require './environment'

module FormsLab
class App < Sinatra::Base
get '/' do
      erb :root
    end
     get '/new' do
      erb :'pirates/new'
    end
     post '/pirates' do
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:weight], params[:pirate][:height])
       params[:pirate][:ships].each do |details|
        Ship.new(details[:name], details[:type], details[:booty])
      end
       @ship1 = Ship.all[0]
       @ship2 = Ship.all[1]
        erb :'pirates/show'
  end  
  end	  
end