def weighted_random_index(array)
  total = array.inject(:+)
  random = rand
  chance = 0
  array.each_with_index do |el,idx|
    chance += (el / total).to_f
    if random <= chance
      return idx
    end
  end
end
