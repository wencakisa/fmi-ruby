class DummyVector
  attr_accessor :x_coord, :y_coord

  def initialize(x_coord, y_coord)
    @x_coord = x_coord
    @y_coord = y_coord
  end

  def +(other)
    DummyVector.new(self.x_coord + other.x_coord, self.y_coord + other.y_coord)
  end

  def inspect
    "Vector.new(#{@x_coord}, #{@y_coord})"
  end
end

p DummyVector.new(3, 2) + DummyVector.new(0, -5)
