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

class Array
  def reshape(shape)
    shape
  end
end

class Hash
  def fetch_deep(keys_path)
    keys = keys_path.split('.').to_a

    result = self
    until keys.empty?
      key = keys.delete_at(0)
      result = result[key.to_s] || result[key.to_sym]
    end

    result
  end

  def reshape(shape)
    shape.each do |key, value|
      # if value.is_a?(Hash)
      #   value.each do |new_key, new_value|
      #     value[new_key] = value.fetch_deep(new_value)
      #   end
      # end

      shape[key] = self.fetch_deep(value)
    end

    shape
  end
end

p order.fetch_deep('dessert.variant')
p order.fetch_deep('dessert.comments')
# p order.fetch_deep('dessert.comments.5')

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

order.reshape(shape)