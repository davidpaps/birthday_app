class Timepiece

  attr_reader :todays_date, :name, :day, :month

  def initialize(name, day, month)
    @name = name
    @day = day
    @month = month
    @todays_date = Time.new.yday 
  end

  def user_date
    Time.new(0,month,day).yday
  end

  def birthday?
    user_date == @todays_date
  end

  def calculate
    if user_date > todays_date
     366 - (user_date - todays_date)      # Leap year 2020
    elsif user_date < todays_date
      userdate - todays_date
    end
  end

end