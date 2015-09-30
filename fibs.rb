def fibs(num)
  #base cases
  return [] if num == 0
  return [0] if num == 1
  return [0,1] if num == 2
  #otherwise make a recursive call
  prev = fibs(num - 1)
  prev << prev[-1] + prev[-2]
  return prev
end
