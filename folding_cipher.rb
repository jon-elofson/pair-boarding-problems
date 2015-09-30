def folding_cipher(str)
  converter = {}
  alphabet = ('a'..'z').to_a
  alphabet.each_with_index do |ltr,idx|   
    converter[ltr] = alphabet[(idx * -1) - 1]
  end
  new_str = ''
  str.each_char do |chr|
    if chr == " "
      new_str += " "
    else
      new_str += converter[chr]
    end
  end
  new_str
end
