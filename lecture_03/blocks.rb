def range(first, last, step)
  current = first
  while current < last
    yield current
    current += step
  end
end

range(1, 10, 2) { |n| puts n }

def calculate
  result = yield(2)
  "The result for 2 is #{result}."
end

puts calculate { |n| n**2 }

def i_can_haz_block
  if block_given?
    puts 'Yes.'
  else
    puts 'No.'
  end
end

i_can_haz_block
i_can_haz_block { 'something' }
