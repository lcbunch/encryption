class Encryptor

  def cipher

    {'A' => 'H', 'B' => 'I', 'C' => 'J', 'D' => 'K', 'E' => 'L',
    'F' => 'M', 'G' => 'N', 'H' => 'O', 'I' => 'P', 'J' => 'Q',
    'K' => 'R', 'L' => 'S', 'M' => 'T', 'N' => 'U', 'O' => 'V',
    'P' => 'W', 'Q' => 'X', 'R' => 'Y', 'S' => 'Z', 'T' => 'A',
    'U' => 'B', 'V' => 'C', 'W' => 'D', 'X' => 'E', 'Y' => 'F',
    'Z' => 'G'}
  end

  def encrypt(message)
    letters = message.split('')
    array = []
    letters.each do |letter|
      if letters == " "
        array << letter
      else
        array << cipher[letter.upcase]
      end
    end
    array.join
  end

  def encrypt_file(file)
    input = File.open(file, 'r')
    contents = input.read
    encrypted_contents = encrypt(contents)
    input.close
    output = File.open(file + '.encrypted', 'w')
    output.write(encrypted_contents)
    output.close

  end
end

=begin
Lisas-MacBook-Pro:ruby_encryptor Lisa$ irb
2.1.2 :001 > require_relative 'encryptor'
 => true
2.1.2 :002 > e = Encryptor.new
 => #<Encryptor:0x00000101206140>
2.1.2 :003 > e.encrypt('A')
 => "H"

def encrypt(letter)
    cipher[letter.upcase]
end

  def encrypt_word(string)
    letters = string.split('')
    letters.each do |letter|
      encrypted = encrypt(letter)
      results << encrypted
    end
    puts results.join
end
=end
