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

class Person
  def say_hi
    puts "Hello, I am #{self.get_full_name}"
  end

  private
  def special_name
    'Sisko'
  end
end

p = Person.new('Vencislav', 'Tasheff', 17)
p.say_hi
# This one raises a NoMethodError
# puts p.special_name