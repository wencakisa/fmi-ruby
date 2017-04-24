PLACE = 'root'

module Outer
  PLACE = 'intermediate'
  module Inner
    PLACE = 'deep'
  end
end

puts PLACE
puts Outer::Inner::PLACE

module Outer
  module Inner
    puts PLACE
    puts Outer::PLACE
    puts ::PLACE
  end

  puts PLACE
  puts Inner::PLACE
end