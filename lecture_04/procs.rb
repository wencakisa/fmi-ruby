double = Proc.new { |x| x * 2 }

puts double.call 2
puts double[2]
puts double.(2)

# ----------------------------------------------

p Proc.new { puts 'Hello world' }
p lambda { puts 'Hello world' }

# ----------------------------------------------

p = Proc.new { |x, y| puts "#{x}, #{y}" }
l = lambda { |x, y| puts "#{x}, #{y}" }

p.call 1, 2
l.call 1, 2

p.call 1
# This one throws an ArgumentError
# l.call 1

# ----------------------------------------------

def return_in_lambda
  -> { return 42 }.call
  'Hello world'
end

def return_in_proc
  Proc.new { return 42 }.call
  'Hello world'
end

puts return_in_lambda
puts return_in_proc