numbers = [1, 2, 3, 4]

puts numbers.all? {|x| x % 2 == 0}
puts numbers.any? {|x| x % 2 == 0}

numbers << nil
puts numbers.all?

numbers.pop
numbers << :nil
puts numbers.all?

numbers.pop
numbers << false
puts numbers.any?