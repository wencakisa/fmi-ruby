class Vector2

  attr_accessor :x_coord, :y_coord

  def initialize(x_coord, y_coord)
    @x_coord = x_coord
    @y_coord = y_coord
  end

  def magic() end

  def describe
    puts "(#{x_coord}; #{y_coord})"
  end

  private :magic
end

v = Vector2.new 2, 2
v.describe
# puts v.magic

class String
  private :upcase
end

# puts "Gosho".upcase

class Vector2
  private def special
    puts 'krasota'
  end
end

# puts v.special