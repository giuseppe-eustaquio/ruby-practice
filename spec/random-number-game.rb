require_relative "../../number-guess/random_number_game"

describe RandomNumberGame do
  describe "#guess_number" do
    subject(:num_game) { described_class }

    context "when entering a number" do
      let(:first_guess) { 20 }
      let(:second_guess) { 1330 }
      let(:third_guess) { 130 }
      let(:actual_number) { 130 }

      it "tells user the guess is incorrect" do
        expect(num_game.new(first_guess).guess_number).to eql("10:30 AM")
      end  
  end
end
end
