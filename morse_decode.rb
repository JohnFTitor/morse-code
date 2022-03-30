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
  array.each do |char|
    word = "#{word}#{decode_char(char)}"
  end
  word
end

def decode_message(msg_coded)
  array = msg_coded.split(/   /)
  msg = ''
  array.each do |word|
    msg = "#{msg} #{decode_word(word)}"
  end
  msg
end

puts decode_message('-- -.--   -. .- -- .')
puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
