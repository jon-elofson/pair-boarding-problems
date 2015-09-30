require 'set'

def pair_sum(arr,val)
  seen = Set.new
  pairs = Set.new
  arr.each do |num|
    target = val - num
    if seen.include?(target)
      pairs << [target,num].sort
    end
    seen << num
  end
  pairs
end
