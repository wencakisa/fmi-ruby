# First way
class Snake
  class Level
    def Level.load(_) end
  end
end

# Second way (the better one)
class Tiger
  class Place
    def self.load(_) end
  end
end

# Third way (if you want to define more than one class method)
class Seven
  class Days
    class << self
      def load(_) end

      def reload(_) end
    end
  end
end