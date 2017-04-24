a = 5
b = 3

puts "#{a}, #{b}"
a, b = b, a
puts "#{a}, #{b}"

a = 1, 2, 3
p a

a, b = 1, 2, 3
puts "#{a}, #{b}"

head, *tail = 1, 2, 3
puts "#{head}, #{tail}"

first, *middle, last = 1, 2, 3, 4
puts "#{first}, #{middle}, #{last}"

first, *middle, last = 1, [2, 3, 4]
puts "#{first}, #{middle}, #{last}"

first, *middle, last = 1, *[2, 3, 4]
puts "#{first}, #{middle}, #{last}"

head, (title, body) = 1, [2, 3]
puts "#{head}, #{title}, #{body}"

x = 0
a, b, c = x, (x += 1), (x += 1)
puts "#{a}, #{b}, #{c}"
