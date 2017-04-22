class Person
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def say_hi
    puts "Hi, I am #{self.name}."
  end

  def introduction_to(other)
    "Hello, #{other}."
  end
end

class PolitePerson < Person
  def say_hi
    puts "Hello, my name is #{self.name}."
  end

  def introduction_to(other)
    super("Mr. #{other}") + ' How do you do?'
  end
end

p = Person.new 'Sisko'
polite = PolitePerson.new 'Sisko'

p.say_hi
polite.say_hi
puts polite.introduction_to('Smith')