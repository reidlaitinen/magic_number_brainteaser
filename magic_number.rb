require 'numbers_in_words'

def magic_number(n)
  n_string = NumbersInWords.in_words(n)
  
  if n_string.delete(' ').length != 4
    puts "#{n} is #{n_string.delete(' ').length}"
    magic_number(n_string.delete(' ').length)
  else
    puts "#{n} is 4"
    puts "...and 4 is the magic number\n\n"
    exit
  end
  
end

def main
  print "\nGive me an integer: "
  input_n = gets.strip.to_i
  magic_number(input_n)
end

main