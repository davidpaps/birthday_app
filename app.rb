require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/form' do
    @name = params[:name]
    @day = params[:day]
    @month = params[:month]
    erb :form
  end

  run! if app_file == $0

end
