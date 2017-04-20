numbers = {
    :one => :einz,
    :two => :zwei
}

p numbers[:one]
p numbers[:four]

numbers[:three] = :drei

p numbers[:three]
p numbers.fetch(:four, :keine_ahnung)

p numbers.keys
p numbers.values

numbers.each {|pair| p pair}
numbers.each {|key, value| p key, value}

puts numbers.key? :four
puts numbers.size
p numbers.invert
p numbers.merge({:four => :frei})
p numbers.to_a

p({:one => 1, :two => 2})
p({one: 1, two: 2})