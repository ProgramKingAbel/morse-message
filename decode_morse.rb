def decode(morse_code)
  morse_dict = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z', '-----' => '0', '.----' => '1', '..---' => '2', '...--' => '3',
    '....-' => '4', '.....' => '5', '-....' => '6', '--...' => '7', '---..' => '8',
    '----.' => '9'
  }

  words = split_into_words(morse_code)
  decoded_words = decode_words(morse_dict, words)
  join_words(decoded_words)
end

def split_into_words(morse_code)
  morse_code.split('   ')
end

def decode_words(morse_dict, words)
  words.map do |word|
    morse_chars = word.split
    decode_characters(morse_dict, morse_chars)
  end
end

def decode_characters(morse_dict, morse_chars)
  morse_chars.map { |morse_char| morse_dict[morse_char] }.join
end

def join_words(decoded_words)
  decoded_words.join(' ')
end

puts decode '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
