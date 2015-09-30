def silly_years(year)
  answer = []
  while answer.length <= 10
    year += 1
    year_str = year.to_s
    first, middle, last = year_str[0..1], year_str[1..2], year_str[2..3]
    ints = [first,middle,last].map(&:to_i)
    if ints[0] + ints[2] == ints[1]
      answer << year
    end
  end
  answer
end
