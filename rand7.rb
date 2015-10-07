def rand7

  while true
    num = 5 * rand(5) + rand(5)
    return num % 7 unless num > 21
  end
  
end
