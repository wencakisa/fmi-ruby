numbers = [-9, -4, 0, 1, 4, 9]

positive = numbers.select { |x| x > 0 }
negative = numbers.select { |x| x < 0 }
p positive, negative

even = numbers.reject {|x| x % 2 == 1}
p even

squares = numbers.map {|x| x**2}
p squares

roots = numbers.select {|x| x > 0}.map {|x| x**0.5}
p roots

# Same as the one above
roots = numbers.find_all {|x| x > 0}.collect {|x| x**0.5}
p roots
