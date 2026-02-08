#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12

# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

# ----------------------------------------------------------------------------------------------------------

# real stock prices in reverse order (ending 2/6/26)
nvidia_close_price = %w(185.41 171.88 174.19 180.34 185.61 191.13 192.51 191.52 188.52 186.47 187.67 184.84 183.32 178.07 186.23 187.05 183.14 185.81 184.94 184.86 185.04 189.11 187.24).reverse

# create a list of possible trade scenarios, storing buy points, sell points, and price difference
def stock_picker(price_list)
  results = price_list.map.with_index do |price, index|
    price = price.to_f
    price_difference = -999999.99
    # Exceptions: you can never buy at the last day, because there is no time to sell
    unless index == -1
      trade_results = price_list.map.each_with_index do |price_2, index_2|
        price_2 = price_2.to_f
        if index_2 > index
          if price_2 - price > price_difference
            price_difference_unrounded = price_2 - price
            price_difference = price_difference_unrounded.round(2)
            sell_index = index_2
            sell_price = price_2
          end
        end
      unless sell_price == nil
        { :buy_index => index, :sell_index => sell_index, :price_difference => price_difference, :buy_price => price, :sell_price => sell_price }
      end
      end
    end
    trade_results.compact
  end

  trade_options = results.flatten

  # select the trade scenario that has the greatest value
  best_option = trade_options.reduce do |current_hash, next_hash|
    if current_hash[:price_difference] < next_hash[:price_difference]
      current_hash = next_hash
    end
    current_hash
  end
  puts best_option
  return [best_option[:buy_index], best_option[:sell_index]]
end

stock_picker(nvidia_close_price)