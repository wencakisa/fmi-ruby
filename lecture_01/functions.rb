def eat_chocolate
  puts 'Nom! ' * 3
end

eat_chocolate

def add(a, b)
  a + b
end

puts add 5, 3
puts add -5, 12

def max(a, b)
  if a > b
    a
  else
    b
  end
end

puts max 12, -5
puts max 3, 4