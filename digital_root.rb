def digital_root(num)
  sum = 0
  while num > 0
    digit = num % 10
    sum += digit
    num /= 10
  end
  if sum < 10
    return sum
  else
    digital_root(sum)
  end
end
