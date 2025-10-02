# cipher.rb

class CaesarCipher
  attr_accessor :string, :encrypted, :shift, :alphabet

  def initialize(string)
    @string = string
    @encrypted = ""
    @shift = 5
    @alphabet = ("a".."z").to_a
  end

  def find_index
    char_position = []
    @string.split("").each do |char|
      @alphabet.each_with_index do |letter, index|
        char_position << index if char.downcase == letter
      end
    end
    char_position
  end

  def encrypt_array(array)
    new_array = []
    array.each { |num| new_array << @alphabet.rotate(5)[num] }
    new_array
  end
end
