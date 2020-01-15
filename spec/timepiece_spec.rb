require 'timepiece'

describe Timepiece do

  let(:subject) { described_class.new(1, 2) }

  describe "#initialize" do 

    it "#date_checker" do
      expect(subject.todays_date).to eq(Time.new.yday)
    end

  end
end