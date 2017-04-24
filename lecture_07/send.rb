puts 3.send :+, 2
puts 3.public_send :+, 2

3.send :puts, 'Send nudes.'
# 3.public_send :puts, 'Send nukes.'