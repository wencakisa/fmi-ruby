def quote(name)
  case name
  when 'Yoda'
    'Do or do not. There is no try.'
  when 'Darth Vader'
    'The Force is strong with this one.'
  when 'R2-D2'
    'BEEP-BEEP.'
  else
    'I dunno what to say here.'
  end
end

puts quote('Yoda')
puts quote('Lambi')

def stringify_operation(operation)
  case operation
  when :& then 'AND'
  when :| then 'OR'
  when :^ then 'XOR'
  when :! then 'NOT'
  else 'WAT?'
  end
end

puts stringify_operation(:^)
puts stringify_operation('Tony Montana')

def qualify(age)
  case age
  when 0..12    then 'Still very young.'
  when 13..19   then 'A teenager, oh no!'
  when 33       then 'The age of Jesus.'
  when 90..200  then 'Oh... that\'s old!'
  else 'Not very interesting.'
  end
end

puts qualify(3)
puts qualify(17)
puts qualify(42)

def magic(thing)
  case thing
  when Integer then 'This is a number.'
  when String then 'This is a string.'
  when Array then thing.map { |item| magic item }
  else 'Umm... wat?'
  end
end

puts magic(3)
puts magic('seh')
puts magic([1, 'seh', :kunta])

def get_mood(hours_of_sleep)
  case hours_of_sleep
  when 8..10 then 'I\'m fine.'
  when 6..8 then 'I am little sleepy.'
  when 0..3 then 'GTMO.'
  end
end

puts get_mood(7)
puts get_mood(2)