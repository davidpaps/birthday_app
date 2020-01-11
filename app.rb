require 'sinatra/base'

class Birthday < Sinatra::Base

  get '/' do
    erb :index
  end

  # post'/' do
  #   erb :index
  #   @name = params[:name]
  #   redirect('/form')
  # end

  post '/form' do
    @name = params[:name]
    erb :form
  end

  run! if app_file == $0

end
