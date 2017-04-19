puts 'shut up'.upcase
puts 'wonderful'.sub('wonder', 'color')

puts 'Ha! ' * 3
puts '%s bacon' % 'Chunky'

text = 'Chanky'
text[2] = 'u'
text << ' bacon'
puts text

puts "bacon\n".chop
puts 'bacon'.chop
puts "bacon\n".chomp
puts 'bacon'.chomp
puts 'Hello'.include? 'ell'
puts 'Bacon'.eql? 'aCoN'.downcase.insert(0, 'B')
puts 'bloat'.sub 'blo', 'm'