class Timepiece

  attr_reader :todays_date, :user_date

  def initialize(month, day)
    @todays_date = Time.new.yday 
    @user_date = Time.new(0,month,day).yday
  end

  def self.create(month, day)
    @timepiece = Timepiece.new(month, day)
  end

  def self.instance
    @timepiece
  end

  def birthday?
    user_date == todays_date
  end

  def calculate_countdown
    user_date > todays_date ? user_date - todays_date : 366 - (todays_date - user_date )
  end

end