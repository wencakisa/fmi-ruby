pow = lambda { |a, b| a**b }

puts pow.call 2, 2
puts pow[2, 2]
puts pow.(2, 2)

double = lambda do |x|
  x * 2
end

puts double[3]

divide = lambda { |a, b| a / b }
puts divide[12, 3]

divide = ->(a, b) { a / b }
puts divide[12, 3]