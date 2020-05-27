require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    attributes = {
      :name
      :breed
      :age
    }
    input = params[attributes]
    @puppy = Puppy.new(input)
    erb :display_puppy
  end

end
