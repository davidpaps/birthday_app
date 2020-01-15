require 'timepiece'

describe Timepiece do

  let(:subject) { described_class.new("david", 1, 2)}

  describe "#initialize" do 

    it "#date_checker" do
      expect(subject.todays_date).to eq(Time.new.yday)
    end

    it "instantiated with the name david" do
      expect(subject.name).to eq("david")
    end

    it "instantiated with the day 1" do
      expect(subject.day).to eq(1)
    end

    it "instantiated with the month 2" do
      expect(subject.month).to eq(2)
    end

  end
end