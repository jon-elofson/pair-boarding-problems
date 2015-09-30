def common_substrings(str1,str2)
  longest = ''
  str1.length.times do |idx1|
    idx2 = idx1 + 1
    while idx2 < str1.length
      substr = str1[idx1..idx2]
      if str2.include?(substr) && substr.length > longest.length
        longest = substr
      end
      idx2 += 1
    end
  end
  longest
end
