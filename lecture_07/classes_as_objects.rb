anonymous_class = Class.new
puts anonymous_class
puts anonymous_class.new
puts Class.new.new
puts Module.new

duck = Class.new do
  def quack_to(name)
    puts "Quack, quack, #{name}!"
  end
end

duck.new.quack_to('Sisak')

Person = Class.new

puts Class.new
puts Person

Larodi = Module.new

puts Module.new
puts Larodi