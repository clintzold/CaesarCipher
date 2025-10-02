require_relative 'lib/cipher'

#Main driving code
puts "Welcome to Caesar Cipher!\n\n Please enter a message to encrypt!"
string = gets.chomp
session = CaesarCipher.new(string)
session.encrypt
