age = 17
classification = if age < 13
                   'Young person'
                 elsif age < 20
                   'Teenager'
                 else
                   'Old one'
                 end

puts "Your classification is: #{classification}"
