def matrix_region_sum(grid,top_left,bottom_right)
  sum = 0
  x_pos = top_left[0]
  while x_pos <= bottom_right[0]
    y_pos = top_left[1]
    while y_pos <= bottom_right[1]
      sum += grid[x_pos][y_pos]
      y_pos += 1
    end
    x_pos += 1
  end
  sum
end
