class Something
  def self.answer
    42
  end
end

puts Something.answer

class Base
  def self.answer
    7
  end
end

class Derived < Base
  def self.say_answer
    puts answer
    puts Base.answer
  end
end

puts Derived.answer
puts Derived.say_answer