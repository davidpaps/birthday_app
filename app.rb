require 'sinatra/base'
require './lib/timepiece'

class Birthday < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect to('/decision')
  end

  get'/decision' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    @user = Timepiece.new(@day, @month)
    @user.birthday? ? (redirect to('/birthday_message')) :  (redirect to('/birthday_countdown'))
  end

  get '/birthday_message' do
    @name = session[:name]
    erb :birthday_message
  end

  get '/birthday_countdown' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    @user = Timepiece.new(@day, @month)
    @countdown = @user.calculate_countdown
    erb :birthday_countdown
  end

   
  run! if app_file == $0

end
