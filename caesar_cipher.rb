def caesar_cipher(string)
  # Alphabetical array used to encrypt/decrypt strings
  alphabet = ('a'..'z').to_a
  # New encrypted array to be stored here
  encrypted_array = []
  # Creates an array from string to be compared with each character of alphabet
  string_array = string.split('')
  # Checks for matches within the alphabet and populates a new array with encrypted characters
  string_array.each do |item|
    # Pushes modified characters while retaining case-sensitivity
    if alphabet.include?(item.downcase)
      alphabet.each_with_index do |letter, index|
        if letter == item
          encrypted_array.push(alphabet[index - 5])
        elsif letter == item.downcase
          encrypted_array.push(alphabet[index - 5].upcase)
        end
      end
    # Pushes non-alphabetical characters to array
    else
      encrypted_array.push(item)
    end
  end

  puts "#{encrypted_array.join}"
end

# Welcome Message
puts "Welcome to Caesar Cypher!\n Please enter your message\n"
# Collects Message to encrypt
message = gets.chomp

caesar_cipher(message)
