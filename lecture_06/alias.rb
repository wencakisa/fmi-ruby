class Array
  %i[size length count].each do |method_name|
    alias_method "old_#{method_name}", :size
  end

  def size
    0
  end
end

puts [1, 2, 3, 4, 5].size
puts [1, 2, 3, 4, 5].old_size