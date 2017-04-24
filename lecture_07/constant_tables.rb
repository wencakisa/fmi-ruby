module MyLibrary
  class Object
  end
end

p MyLibrary.constants
p MyLibrary::Object == Object

LARODI = 2

class Foo
  LARODI = 3
end

# Not the best way, but possible.
class Foo::Bar
  LARODI = 5
end

puts LARODI
puts Foo::LARODI
puts Foo::Bar::LARODI