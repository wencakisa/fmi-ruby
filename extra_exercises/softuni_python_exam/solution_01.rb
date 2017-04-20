def is_sorted_sequence(array)
  array.map! { |n| Integer(n) }
  index = 1

  array.each do |n|
    current_num = n
    next_num = array[index]

    if next_num && current_num > next_num
      return index
    end

    index += 1
  end

  'SORTED'
end

puts is_sorted_sequence %w[1 8 13 42 501 600 601 633]
puts is_sorted_sequence %w[1  2  3 9   11   10    17   28]