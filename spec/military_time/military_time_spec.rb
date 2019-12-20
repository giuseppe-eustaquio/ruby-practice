require "spec_helper"
require_relative "../../military_time/military_time.rb"

describe MilitaryTime do
  describe "#call" do
    subject(:mil_time) { described_class }

    context "when passing a valid time in military format" do
      let(:am_time) { 1030 }
      let(:pm_time) { 1330 }
      let(:time_starting_with_0) { 130 }
      let(:midnight) { 0 }
      let(:noon) { 1200 }

      it "creates a valid time am time" do
        expect(mil_time.new(am_time).call).to eql("10:30 AM")
      end

      it "creates a valid time pm time" do
        expect(mil_time.new(pm_time).call).to eql("01:30 PM")
      end

      it "correctly handles military times that start with 0" do
        expect(mil_time.new(time_starting_with_0).call).to eql("01:30 AM")
      end

      it "correctly handles noon" do
        expect(mil_time.new(noon).call).to eql("12:00 PM")
      end

      it "correctly handles midnight" do
        expect(mil_time.new(midnight).call).to eql("12:00 AM")
      end
    end

    context "when passing an invalid time" do
      let(:negative_time) { -1030 }
      let(:overflow_time) { 2400 }
      let(:invalid_minutes) { 190 }

      it "throws an exception when time is negative" do
        expect { mil_time.new(negative_time).call }.to raise_error(ArgumentError)
      end

      it "throws an exception when time is too big" do
        expect { mil_time.new(overflow_time).call }.to raise_error(ArgumentError)
      end

      it "throws an exception when time has invalid minutes" do
        expect { mil_time.new(invalid_minutes).call }.to raise_error(ArgumentError)
      end
    end
  end
end
