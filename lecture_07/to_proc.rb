name = proc { |object| object.name }
puts name
name = :name.to_proc
puts name

words = %w[foo bar larodi]
p words.map(&:length)

hash = [{ a: 1 }, { b: 2 }, { c: 3 }]
p hash.reduce(&:merge)

numbers = 1, 2, 3, 4, 5
p numbers.reduce(&:+)

array = ['Foo', :Bar, 3]
puts array.map(&:to_s).map(&:upcase).join('')