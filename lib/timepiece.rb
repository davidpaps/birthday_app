class Timepiece

  attr_reader :todays_date

  def initialize
    @todays_date = Time.new.yday
  #   @birthday = userinput
  #   @name = name
  end

end