# cipher.rb

class CaesarCipher
  attr_accessor :string, :encrypted, :shift, :alphabet

  def initialize(string)
    @string = string
    @encrypted = ""
    @shift = 5
    @alphabet = ("a".."z").to_a
  end

  def encrypt
    build_string(encrypt_array(find_index))
    display_cipher
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

  def build_string(array)
    @string.split("").each_with_index do |item, index|
      if is_letter?(item)
        @encrypted << array.shift.upcase if item == item.upcase
        @encrypted << array.shift if item == item.downcase
      else
        @encrypted << item
      end
    end
  end

  def is_letter?(char)
    code = char.ord
    (code >= 65 && code <= 90) || (code >= 97 && code <= 122)
  end

  def display_cipher
    puts "\n Cipher is '#{@encrypted}'"
  end
end
