def largest_contiguous_subsum(array)
  sum = array[0]
  (1..(array.length-1)).each do |idx|
    num = array[idx]
    if (num + sum > sum) && (num + sum > num)
      sum += num
    else
      sum = num
    end
  end
  return sum
end
