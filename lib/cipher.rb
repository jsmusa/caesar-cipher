require 'pry-byebug'

def caesar_cipher(string, shift)
  shift %= 26 # make shift not greater than 26
  array = string.split('')
  char_array = array.map do |char|
    if char.match(/[a-zA-Z]/)
      number = char.ord + shift
      number -= 26 if /[A-Z]/.match(char) && number >= 90 || number > 122
      char = number.chr
    else
      char end
  end
  new_string = char_array.join('')
  p new_string
end

caesar_cipher('Zehahahahaha!!! zzzz and punctuation....!!!!????? SaRcASm SpeAK', 45)
