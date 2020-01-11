require 'timepiece'

describe Timepiece do
  
  describe "#initialize" do 
    it "instantiated with todays day of the year" do
      expect(subject.todays_date).to eq(Time.new.yday)
    end
  end
end