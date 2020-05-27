require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    input = params[:name], params[:age], params[:breed]
    @puppy = Puppy.new(input)
    erb :display_puppy
  end

end
