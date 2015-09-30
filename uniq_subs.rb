def uniq_subs(str)
  subs = {}
  str.length.times do |idx1|
    (idx1..str.length-1).each do |idx2|
      substr = str[idx1..idx2]
      subs[substr] = true if subs[substr].nil?
    end
  end
  subs.keys
end
