require "pry-byebug"
def caesar_cipher(string,shift)
  array = string.split("")
  char_array = array.map do |char| 
    if char.match(/[a-zA-Z]/)
      number = char.ord + shift
      number -= 26 if (number > 90 && number < 97 || number > 122)
      char = number.chr
    else char end
  end
  puts char_array.join("")
end