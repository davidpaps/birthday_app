require 'sinatra/base'
require './lib/timepiece'

class Birthday < Sinatra::Base

  enable :sessions

  before do
    @timepiece = Timepiece.instance
  end

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
    @timepiece = Timepiece.create(@month, @day)
    @timepiece.birthday? ? (redirect to('/birthday_message')) :  (redirect to('/birthday_countdown'))
  end

  get '/birthday_message' do
    @name = session[:name]
    erb :birthday_message
  end

  get '/birthday_countdown' do
    @name = session[:name]
    @countdown = @timepiece.calculate_countdown
    erb :birthday_countdown
  end
  
end
