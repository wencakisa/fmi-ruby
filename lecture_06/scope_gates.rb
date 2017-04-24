bacon = 2

def foo()
  chunky = 10

  1.times do
    puts chunky
    chunky = 42
  end

  puts chunky

  # Raises NameError:
  # puts bacon
end

foo