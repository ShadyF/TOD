def caesar_cipher(s, shamt)
  x = ""
  s.each_char do |char|
    c = char.ord
    if char == char.downcase && c.between?(97..122)
      c -= 97
      c = (c + shamt) % 26
      c += 97
    elsif char == char.upcase && c.between?(65..90)
      c -= 65;
      c = (c + shamt) % 26
      c += 65
    end
    x += c.chr
  end
  return x
end

puts caesar_cipher("What a string!", 5)
