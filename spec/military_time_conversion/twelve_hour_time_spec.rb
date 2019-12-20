require_relative "../../military_time_conversion/twelve_hour_time"

describe MilitaryTimeConversion::TwelveHourTime do
  describe "#to_s" do
    subject(:mil_time) { described_class }

    context "when passing a valid time in military format" do
      let(:am_time) { 1030 }
      let(:pm_time) { 1330 }
      let(:time_starting_with_0) { 130 }
      let(:midnight) { 0 }
      let(:noon) { 1200 }
      let(:time_with_decimal_places) { 1330.99 }

      it "connverts to the correct am time" do
        expect(mil_time.new(am_time).to_s).to eql("10:30 AM")
      end

      it "converts to the correct pm time" do
        expect(mil_time.new(pm_time).to_s).to eql("01:30 PM")
      end

      it "converts military times that start with 0" do
        expect(mil_time.new(time_starting_with_0).to_s).to eql("01:30 AM")
      end

      it "handles noon" do
        expect(mil_time.new(noon).to_s).to eql("12:00 PM")
      end

      it "handles midnight" do
        expect(mil_time.new(midnight).to_s).to eql("12:00 AM")
      end

      it "ignores any decimal places and still converts" do
        expect(mil_time.new(time_with_decimal_places).to_s).to eql("01:30 PM")
      end
    end

    context "when passing an invalid time in military format" do
      let(:negative_time) { -1030 }
      let(:overflow_time) { 2400 }
      let(:invalid_minutes) { 199 }

      it "throws an exception when time is negative" do
        expect { mil_time.new(negative_time).to_s }.to raise_error(ArgumentError)
      end

      it "throws an exception when time is greater than 2359" do
        expect { mil_time.new(overflow_time).to_s }.to raise_error(ArgumentError)
      end

      it "throws an exception when time has invalid minutes" do
        expect { mil_time.new(invalid_minutes).to_s }.to raise_error(ArgumentError)
      end
    end
  end
end
