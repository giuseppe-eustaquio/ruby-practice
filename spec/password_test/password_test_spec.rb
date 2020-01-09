require_relative "../../password-strength/password_validator"

describe PasswordValidator do
  describe "#password_strength" do
    subject(:pw_vil) { described_class }

    context "when entering a password" do
      let(:very_strong_password) { "G!aa1dsa" }
      let(:strong_password) { "A1aaaaaaa"}
      let(:weak_password) { "aaaawwww"}
      let(:very_weak) { "1"}      
      let(:empty_password) { ""}
      let(:single_space) { " "}

      it "tests very strong password" do
        expect(pw_vil.password_strength(very_strong_password)).to eql("very strong")
      end

      it "tests strong password" do
        expect(pw_vil.password_strength(strong_password)).to eql("strong")
      end
      it "tests weak password" do
        expect(pw_vil.password_strength(weak_password)).to eql("weak")
      end
      it "tests very weak password" do
        expect(pw_vil.password_strength(very_weak)).to eql("very weak")
      end
      it "tests empty password" do
        expect(pw_vil.password_strength(empty_password)).to eql("very weak")
      end
      it "tests single space password" do
        expect(pw_vil.password_strength(single_space)).to eql("very weak")
      end
   end
  end
end
