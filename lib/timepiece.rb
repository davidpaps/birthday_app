class Timepiece

  attr_reader :todays_date, :name, :day, :month

  def initialize(name, day, month)
    @todays_date = Time.new.yday
    @name = name
    @day = day
    @month = month
  end
  
end