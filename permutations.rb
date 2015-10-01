def permutations(arr)
  return [[]] if arr.empty?
  result = []
  arr.each_with_index do |el,idx|
    rest_of_array = arr[0...idx] + arr[(idx+1)..-1]
    next_perms = permutations(rest_of_array)
    result.concat(next_perms.map { |perm| [el] + perm })
  end
  result
end
