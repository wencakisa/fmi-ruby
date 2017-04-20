numbers = [1, 2, 3, 4, 5]

p numbers.reduce { |a, b| a + b }
p numbers.reduce(0) { |a, b| a * b }
p numbers.reduce(1) { |a, b| a * b }

p numbers.reduce { |a, b| "#{a} #{b}" }
p numbers.join(' ')