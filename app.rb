require 'sinatra/base'
require './lib/timepiece'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/birthday_message' do
    @user = Timepiece.new(params[:name], params[:day], params[:month])
    erb :birthday_message
  end

  run! if app_file == $0

end
