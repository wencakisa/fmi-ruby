numbers = [-3, 4, 12, 0, 7, -5, 1]

p numbers.select { |x| x >= 0 }
p numbers.select { |x| x < 0 }
p numbers.select { |x| x >= 0 }.map { |x| x**2 }
p numbers.select { |x| x >= 0 }.map { |x| x**2 }.reject { |x| x > 100 }.sort

is_odd = ->(x) { x % 2 == 1 }
is_positive = ->(x) { x > 0 }
square = ->(x) { x**2 }

p numbers.select(&is_odd).select(&is_positive).map(&square).sort