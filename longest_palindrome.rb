def longest_palindrome(string)
  best_palindrome = ''
  string.length.times do |start_idx|
    (string.length - 1).downto(start_idx) do |end_idx|
      substr = string[start_idx..end_idx]
      next if substr.length < best_palindrome.length
      if palindrome?(substr) && substr.length > best_palindrome.length
        best_palindrome = substr
      end
    end
  end
  best_palindrome
end

def palindrome?(substr)
  idx = 0
  while idx < substr.length
    if substr[idx] != substr[(-1 * idx) - 1]
      return false
    end
    idx += 1
  end
  true
end
