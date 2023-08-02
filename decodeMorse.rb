def morse_code_to_string(morse_code)
    # Morse code dictionary
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
  
    # Split the input into individual words
    words = morse_code.split('   ')
  
    decoded_message = ''
  
    # Decode each word
    words.each do |word|
      # Split the word into Morse code characters
      morse_chars = word.split(' ')
  
      decoded_word = ''
  
      # Decode each Morse code character
      morse_chars.each do |morse_char|
        decoded_word += morse_dict[morse_char]
      end
  
      decoded_message += decoded_word + ' '
    end
  
    # Remove trailing space and return the decoded message
    decoded_message.rstrip
  end
  