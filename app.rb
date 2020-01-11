require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/birthday_message' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    erb :birthday_message
  end

  run! if app_file == $0

end
