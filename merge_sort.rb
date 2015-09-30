def merge_sort(arr)
  return arr if arr.length <= 1
  pivot = arr.length / 2
  left = arr[0...pivot]
  right = arr[pivot..-1]
  merge(merge_sort(left),merge_sort(right))
end

def merge(left,right)
  result = []
  until left.empty? || right.empty?
    case left[0] <=> right[0]
    when -1
      result << left.shift
    when 0
      result << left.shift << right.shift
    when 1
      result << right.shift
    end
  end
  result + left + right
end
