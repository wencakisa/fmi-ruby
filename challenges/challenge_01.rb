def common_digits_count(a, b)
  (a.abs.to_s.chars & b.abs.to_s.chars).length
end

puts common_digits_count(123444, 3445)
puts common_digits_count(456, -2358)
puts common_digits_count(-887, -188889)