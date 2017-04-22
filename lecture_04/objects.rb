class Bacon
  def chunky?
    'Yes, of course'
  end
end

bacon = Bacon.new
puts bacon.chunky?

class Person
  attr :first_name
  attr :last_name
  attr_accessor :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def get_full_name
    @first_name + ' ' + @last_name
  end
end

p = Person.new('Vencislav', 'Tasheff', 17)
puts p.get_full_name
puts p.age
p.age = 18
puts p.age

class Person
  def say_hi
    puts "Hello, I am #{self.get_full_name}"
  end
end

p.say_hi