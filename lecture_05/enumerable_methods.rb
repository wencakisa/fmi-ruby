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

# ----------------------------------------------------

class Integer
  def prime?
    return false if self == 1
    2.upto(self ** 0.5).none? {|n| self % n == 0}
  end
end

puts 7.prime?
puts 8.prime?

# ----------------------------------------------------

array = %w[foo bar baz]

array.each_with_index do |element, index|
  puts "\##{index}: #{element}"
end

p array.map.with_index do |element, index|
  [index, element]
end

array << 'lorem'
array << 'ipsuuum'
groups = array.group_by {|word| word.length}
p groups

array.each_slice(2) do |slice|
  p slice
end

array.each_cons(2) do |cons|
  p cons
end

p [1, 2, 3].zip([4, 5, 6])
p [1, 2].zip([3, 4], [5, 6])
p [1, 2, 3, 4, 5].take(2)
p [1, 2, 3, 4, 5].drop(2)
p [1, 3, 5, 7, 8, 10].take_while {|x| x % 2 == 1}
p [1, 3, 5, 7, 8, 10].drop_while {|x| x % 2 == 1}
