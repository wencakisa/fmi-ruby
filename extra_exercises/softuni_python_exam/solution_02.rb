def can_buy_product(product_price, saved_each_day, spent_each_ten_days)
  days = 0
  saved_money = 0

  while saved_money < product_price
    days += 1

    saved_money += saved_each_day
    saved_money -= spent_each_ten_days if days % 10 == 0

    return 'NO BIKE FOR YOU' if saved_money < 0
  end

  days
end

puts can_buy_product(100, 3.50, 8)
puts can_buy_product(100, 3, 35)