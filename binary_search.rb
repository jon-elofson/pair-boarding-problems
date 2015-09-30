def binary_search(arr,target)
  return nil if arr.empty?
  midpoint = arr.length / 2
  if arr[midpoint] == target
    return midpoint
  elsif arr[midpoint] > target
    binary_search(arr[0...midpoint],target)
  elsif arr[midpoint] < target
    next_search = binary_search(arr[midpoint+1..-1],target)
    if next_search
      midpoint + 1 + next_search
    else
      next_search
    end
  end
end
