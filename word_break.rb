require 'set'

def word_break(s, word_dict)
    return true if word_dict.include?(s)
    queue = find_valid_prefixes(s,word_dict)
    until queue.empty?
        target = queue.shift
        suffix = target[1]
        if word_dict.include?(suffix)
            return true
        else
            queue += find_valid_prefixes(suffix,word_dict)
        end
    end
    false
end


def find_valid_prefixes(string,word_dict)
    result = []
    (string.length - 1).times do |idx|
        prefix = string[0..idx]
        suffix = string[idx+1..-1]
        result << [prefix,suffix] if word_dict.include?(prefix)
    end
    result
end
