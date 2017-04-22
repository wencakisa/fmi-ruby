module MathStuff
  def almost_pi
    3.14
  end

  def almost_e
    2.71
  end
end

module Introducable
  def introduction
    "Hello, I am #{self.get_full_name}"
  end
end

class Person
  attr :first_name
  attr :last_name
  attr_accessor :age
  include MathStuff
  include Introducable

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
puts p.almost_pi
puts p.introduction