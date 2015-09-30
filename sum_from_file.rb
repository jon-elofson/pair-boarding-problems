def sum_from_file(textfile)
  nums = File.readlines(textfile)
  sum = 0
  nums.each do |num|
    if num[0] != "#"
      sum += num.to_i
    end
  end
  sum
end
