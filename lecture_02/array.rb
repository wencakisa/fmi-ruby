numbers = [1, 2, 3, 4]

puts numbers.fetch(0)
# numbers.fetch(15)  # Throws IndexError
numbers.fetch(15) { |n| puts "#{n} isn't in the array." }  # This is a lambda
puts numbers.fetch(15, 42)

puts "Length: #{numbers.length}"
puts "Size: #{numbers.size}"
puts "Sorted array: #{numbers.sort}"
puts "Reversed array: #{numbers.reverse}"
puts "Numbers in range 1 to 2: #{numbers[1..2]}"
puts numbers.include? 2
puts numbers.include? 12

p [:a, :b, :c] + [:d, :e]
p [:a, :b, :c] - [:b, :c]
p [:a, :b, :c] & [:b, :c, :d]
p [:a, :b, :c] | [:b, :c, :d]

numbers << 5
p numbers

numbers.insert 0, 0
p numbers

p numbers.delete_at(0)  # Array#pop without index
p numbers

numbers.push 6
p numbers

p numbers.pop
p numbers

puts numbers.join('-')
p [1, 2].product([3, 4])
p [[1, 2], [3, 4]].transpose
p numbers.shuffle

p %w(chunky bacon)
p %w{masoni bonanza}
p %w!audio literature!
p %w@coffee table jazz@
p %w<a b c>
p %w_Ruby is funny_

p numbers[1..3]
p numbers[-3..-1]
p numbers[1, 1]
numbers[0..2] = [0]
p numbers