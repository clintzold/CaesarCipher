# spec/cipher_spec.rb
# Test suite for CaesarCipher encryption program

require_relative "../lib/cipher"

RSpec.describe CaesarCipher do
  describe "#find_index" do
    context "when called by an object" do
      subject(:no_punc) { described_class.new("abc") }

      it "returns an array of indices from alphabet" do
        array = no_punc.find_index
        expect(array).to eql([0, 1, 2])
      end
    end
  end

  describe "#encrypt_array" do
    context "when a called by an object" do
      subject(:object) { described_class.new("abc") }

      it "returns an array of letters 5 positions ahead of @string" do
        array = [0, 1, 2]
        new_array = object.encrypt_array(array)
        expect(new_array).to eql(%w[f g h])
      end
    end
  end
end
