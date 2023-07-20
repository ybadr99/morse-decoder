$morse_to_char = {
  '.-'   => 'A',   '-...' => 'B',   '-.-.' => 'C',   '-..'  => 'D',
  '.'    => 'E',   '..-.' => 'F',   '--.'  => 'G',   '....' => 'H',
  '..'   => 'I',   '.---' => 'J',   '-.-'  => 'K',   '.-..' => 'L',
  '--'   => 'M',   '-.'   => 'N',   '---'  => 'O',   '.--.' => 'P',
  '--.-' => 'Q',   '.-.'  => 'R',   '...'  => 'S',   '-'    => 'T',
  '..-'  => 'U',   '...-' => 'V',   '.--'  => 'W',   '-..-' => 'X',
  '-.--' => 'Y',   '--..' => 'Z'
}


def decode_char(char)
  decoded_char = $morse_to_char[char]
  if decoded_char.nil?
    puts "Invalid character encountered: #{char}"
  end
  decoded_char
end

def decode_word(word)
  de_word = ''
  word.split(' ').each do |char|
    de_word << decode_char(char)
  end
  de_word
end

def decode(message)
  de_message = ''
  message.strip.split('  ').each do |word|
    de_message << decode_word(word)
    de_message << ' ' unless word == message.split('  ').last  # Add space between words except for the last one
  end
  print de_message
end

decode("      .-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...")
