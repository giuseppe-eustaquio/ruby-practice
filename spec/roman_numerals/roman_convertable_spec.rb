require_relative "../../roman_numerals/roman_convertable"

using RomanConvertable

describe RomanConvertable do
  describe "#to_roman" do
    context "when called on a valid number" do
      let(:three) { 3 }
      let(:nine) { 9 }
      let(:twenty_eight) { 28 }
      let(:two_hundred) { 200 }
      let(:five_hundred_forty) { 540 }
      let(:eight_hundred_two) { 802 }
      let(:nine_hundred_twenty_five) { 925 }
      let(:max_valid_number) { 3_999 }

      it "correctly converts 3" do
        expect(three.to_roman).to eql("III")
      end

      it "correctly converts 9" do
        expect(nine.to_roman).to eql("IX")
      end

      it "correctly converts 28" do
        expect(twenty_eight.to_roman).to eql("XXVIII")
      end

      it "correctly converts 200" do
        expect(two_hundred.to_roman).to eql("CC")
      end

      it "correctly converts 540" do
        expect(five_hundred_forty.to_roman).to eql("DXL")
      end

      it "correctly converts 802" do
        expect(eight_hundred_two.to_roman).to eql("DCCCII")
      end

      it "correctly converts 925" do
        expect(nine_hundred_twenty_five.to_roman).to eql("CMXXV")
      end

      it "correctly converts the maximum valid number, 3999" do
        expect(max_valid_number.to_roman).to eql("MMMCMXCIX")
      end
    end

    context "when called on an invalid number" do
      let(:zero) { 0 }
      let(:overflow) { 4000 }
      let(:negative) { -1 }

      it "throws an exception when called on zero" do
        expect { zero.to_roman }.to raise_error(RangeError)
      end

      it "throws an exception when called on number that's too large" do
        expect { overflow.to_roman }.to raise_error(RangeError)
      end

      it "throws an exception when called on a negative number" do
        expect { negative.to_roman }.to raise_error(RangeError)
      end
    end
  end
end
