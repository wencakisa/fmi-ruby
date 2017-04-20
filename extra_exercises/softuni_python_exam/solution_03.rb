def has_balanced_brackets(str)
  if str.count('(') == str.count(')')
    "OK #{str.count('(')}"
  else
    "WRONG #{str.length}"
  end
end

puts has_balanced_brackets 'а * (1 + (b + c) / (c - b)) = 0'
puts has_balanced_brackets 'Здравей :о)'