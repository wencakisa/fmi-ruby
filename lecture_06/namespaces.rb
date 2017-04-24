module Useless
  class Thing
  end
end

class Grandfather
  class StraightRazor
  end
end

puts Useless::Thing.new
puts Grandfather::StraightRazor.new

module Useless
  puts Thing.new
end