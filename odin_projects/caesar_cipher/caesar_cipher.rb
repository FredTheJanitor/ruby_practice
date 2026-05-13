# caesar cipher welcome
def cli_interface_intro
  puts 'Welcome to Caesar Cipher'
end

def instructions_one
  puts '-------------------------------------------'
  puts "Please, type a string to be 'cyphered'"
  puts '-------------------------------------------'
  puts 'Your String:'
end

def instructions_two
  puts '-------------------------------------------'
  puts 'Please, type an integer to shift the string'
  puts '-------------------------------------------'
  puts 'Your Shift Amount:'
end

def output_cypher_text
  puts '-------------------------------------------'
  puts 'Your New Caesar Cipher:'
end

# runs the program
def cli_interface
  instructions_one
  string = gets.chomp
  instructions_two
  shift_amount = gets.chomp.to_i
  output_cypher_text
  puts caesar_cypher(string, shift_amount)
  cli_ending_sequence
end

def ending_text_one
  puts '-------------------------------------------'
  puts 'Make another?'
  puts '-------------------------------------------'
  puts 'Type `Y` or `N`:'
end

def ending_text_two
  puts '-------------------------------------------'
  puts 'Goodbye, Thank you for using Caeser Cipher'
  puts '-------------------------------------------'
end

# ends or restarts the program
def cli_ending_sequence
  ending_text_one
  restart = gets.chomp.upcase
  unless %w[Y N].include? restart
    puts 'Invalid input, please type Y to try again'
    puts '  or N to quit!'
    cli_ending_sequence
  end
  cli_interface if restart == 'Y'
  ending_text_two
  exit
end

def retain_case(char, shift_amount)
  # retain case of the alphabetical characters
  if char.upcase == char
    upper_character_number = char.ord - 64
    caesar_shift_unicode(upper_character_number, shift_amount).chr.upcase
  elsif char.downcase == char
    lower_character_number = char.ord - 96
    caesar_shift_unicode(lower_character_number, shift_amount).chr.downcase
  end
end

# performs cipher and returns the new string
def caesar_cypher(string, shift_amount)
  character_array = string.split('')

  cypher_aray = character_array.map do |char|
    # keep all characters unless they're alphabetical
    next char unless char.ord.between?(97, 122) || char.ord.between?(65, 90)

    retain_case(char, shift_amount)
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
