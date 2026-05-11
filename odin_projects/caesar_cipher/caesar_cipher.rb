# caesar cipher welcome
def cli_interface_intro
  puts 'Welcome to Caesar Cipher'
end

# runs the program
def cli_interface
  puts '-------------------------------------------'
  puts "Please, type a string to be 'cyphered'"
  puts '-------------------------------------------'
  puts 'Your String:'
  string = gets.chomp
  puts '-------------------------------------------'
  puts 'Please, type an integer to shift the string'
  puts '-------------------------------------------'
  puts 'Your Shift Amount:'
  shift_amount = gets.chomp.to_i
  puts '-------------------------------------------'
  puts 'Your New Caesar Cipher:'
  puts "#{caesar_cypher(string, shift_amount)}"
  cli_ending_sequence
end

# ends or restarts the program
def cli_ending_sequence
  puts '-------------------------------------------'
  puts 'Make another?'
  puts '-------------------------------------------'
  puts 'Type `Y` or `N`:'
  restart = gets.chomp.upcase
  unless restart === 'Y' || restart === 'N'
    puts 'Invalid input, please type Y to try again'
    puts '  or N to quit!'
    cli_ending_sequence
  end
  cli_interface if restart == 'Y'
  puts '-------------------------------------------'
  puts 'Goodbye, Thank you for using Caeser Cipher'
  puts '-------------------------------------------'
  exit
end

# performs cipher and returns the new string
def caesar_cypher(string, shift_amount)
  character_array = string.split('')

  cypher_aray = character_array.map do |char|
    # unless the character is alphabetical, return the character to cypher array
    next char unless char.ord.between?(97, 122) || char.ord.between?(65, 90)

    # retain case of the alphabetical characters
    if char.upcase === char
      upper_character_number = char.ord - 64
      new_char = caesar_shift_unicode(upper_character_number, shift_amount).chr.upcase
      next new_char
    elsif char.downcase === char
      lower_character_number = char.ord - 96
      new_char = caesar_shift_unicode(lower_character_number, shift_amount).chr.downcase
      next new_char
    end
  end
  cypher_aray.join('')
end

# shift a number 1-26 and return unicode value for lowercase letter
def caesar_shift_unicode(number = 0, shift = 0)
  big_number = number + shift
  normal_number = big_number
  normal_number = big_number % 26 if big_number > 26
  normal_number + 96
end

cli_interface_intro
cli_interface
