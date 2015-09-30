#Given a list of numbers in an array, replace all the numbers with the product of all other numbers.
#Do this in O(n) time without using division.



def productify(arr)

  up_product = 1
  up_array = []
  arr.length.times do |idx|
    up_product *= arr[idx]
    up_array << up_product
  end

  down_product = 1
  down_array = Array.new(arr.length)
  (arr.length - 1).downto(0) do |idx|
    down_product *= arr[idx]
    down_array[idx] = down_product
  end

  result = []
  arr.length.times do |idx|
    product = 1
    up_idx = idx - 1
    down_idx = idx + 1
    if up_idx >= 0
      product *= up_array[up_idx]
    end
    if down_idx < arr.length
      product *= down_array[down_idx]
    end
    result[idx] = product
  end

  result

end
