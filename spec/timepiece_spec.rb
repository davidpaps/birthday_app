require 'timepiece'

describe Timepiece do

  let(:subject) { described_class.new(1, 2) }

  describe "#initialize" do 
    it "checks that todays date is initialized" do
      expect(subject.todays_date).to eq(Time.new.yday)
    end

    it "checks the user_date is set" do
      expect(subject.user_date).to eq(2)
    end
  end

  describe "#birthday?" do
    it "returns false" do
      expect(subject.birthday?).to eq(false)
    end
  end

  describe "#calculate_countdown" do
    it "expects to calculate the countdown" do
      expect(subject.calculate_countdown).to eq(351)
    end
  end

end