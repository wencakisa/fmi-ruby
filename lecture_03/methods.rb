def factorial(n)
  if n == 1
    1
  else
    factorial(n - 1) * n
  end
end

puts factorial(3)

class Array
  def forty_second
    self[42]
  end
end

list = []
list[42] = 'The Universe'

puts list.forty_second

def order_drink(drink, size = 'small')
  puts "A #{size} #{drink}, please!"
end

order_drink('coffee', 'large')
order_drink('whiskey')

def say_hi(name, *drinks)
  puts "Hi, I am #{name} and I enjoy #{drinks.join(', ')}."
end

say_hi('Venci', 'water', 'tea', 'rakia')

def hash_order(drink, preferences = {})
  puts "Drink: #{drink} / Preferences: #{preferences}"
end

# Same shit
hash_order('Latte', {:size => 'Grande', :syrup => 'hazelnut'})
hash_order('Latte', :size => 'Grande', :syrup => 'hazelnut')
hash_order('Latte', size: 'Grande', syrup: 'hazelnut')
hash_order 'Latte', size: 'Grande', syrup: 'hazelnut'

def order(drink, size: 'grande', syrup: nil)
  message = "You ordered a #{size} #{drink}."
  message.insert(-2, " with #{syrup} syrup") if syrup
  message
end

puts order 'Latte'
puts order 'Latte', size: 'medium'
puts order 'Latte', size: 'small', syrup: 'hazelnut'

def even?(n)
  n % 2 == 0
end

puts even? 3
puts even? 4

numbers = [3, 5, 1, 2, 4]
numbers.sort
p numbers
numbers.sort!
p numbers