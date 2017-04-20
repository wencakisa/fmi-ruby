str = 'wartburg'
puts str.insert(-1, 'er')

str = str.freeze
# puts str.insert(-1, 'er')  # Throws RuntimeError
