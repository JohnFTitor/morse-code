def decode_char(str)
  result = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G',
    '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N',
    '---' => 'O', '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T', '..-' => 'U',
    '...-' => 'V', '.--' => 'W', '-..-' => 'X',	'-.--' => 'Y', '--..' => 'Z'
  }
  result[str]
end

def decode_word(word)
	array = word.split(/ /)
	word = ''
	array.each { |char| 
		word = "#{word}#{decode_char(char)}"
	}
	word
end
