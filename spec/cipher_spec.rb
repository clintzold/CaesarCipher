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

  describe "#build_string" do
    context "when an array is passed and @string has no punctuation" do
      subject(:pass_array) { described_class.new("abcde") }

      it "changes instance variable to string" do
        pass_array.build_string(%w[h e l l o])
        string = pass_array.encrypted
        expect(string).to eql("hello")
      end
    end

    context "when an array is passed and @string has punctuation" do
      subject(:with_punc) { described_class.new("abc!") }

      it "builds new string with punctuation" do
        with_punc.build_string(%w[e f g])
        string = with_punc.encrypted
        expect(string).to eql("efg!")
      end
    end

    context "when string has capital letter" do
      subject(:with_caps) { described_class.new("aBc") }

      it "builds new string with proper capitalization" do
        with_caps.build_string(%w[e f g])
        string = with_caps.encrypted
        expect(string).to eql("eFg")
      end
    end
  end

  describe "#encrypt" do
    context "when called by a new object" do
      subject(:new_object) { described_class.new("a Bc!") }

      it "changes @encrypted to ciphered version of @string" do
        new_object.encrypt
        string = new_object.encrypted
        expect(string).to eql("f Gh!")
      end
    end
  end
end
