class Array
  def reshape(shape)
    map { |value| value.reshape(shape) }
  end

  def fetch_deep(key_path)
    key, nested_key_path = key_path.split('.', 2)
    element = self[key.to_i]

    element.fetch_deep(nested_key_path) if element
  end
end

class Hash
  def reshape(shape)
    return fetch_deep(shape) if shape.is_a? String

    shape.map do |new_key, new_shape|
      [new_key, reshape(new_shape)]
    end.to_h
  end

  def fetch_deep(key_path)
    key, nested_key_path = key_path.split('.', 2)
    value = self[key.to_sym] || self[key.to_s]

    return value unless nested_key_path

    value.fetch_deep(nested_key_path) if value
  end
end

order = {
    dessert: {
        type: 'cake',
        'variant' => 'chocolate',
        rating: 10,
        comments: [
            {text: 'So sweet!'},
            {text: 'A perfect blend of milk chocolate and cookies. With a cherry on top.'}
        ]
    }
}

p order.fetch_deep('dessert.variant')
p order.fetch_deep('dessert.comments')
p order.fetch_deep('dessert.comments.0.text')
p order.fetch_deep('dessert.comments.2')

order = {
    dessert: {type: 'cake', variant: 'chocolate'}
}

shape = {
    food: 'dessert.type',
    taste: 'dessert.variant'
}

p order.reshape(shape)

order = {
    dessert: {type: 'cake', variant: 'chocolate'}
}

shape = {
    food: {type: 'dessert.type', taste: 'dessert.variant'}
}

p order.reshape(shape)
