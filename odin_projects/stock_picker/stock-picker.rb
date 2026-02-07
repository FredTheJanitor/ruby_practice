#Implement a method #stock_picker that takes in an array of stock prices, one for each hypothetical day. 
# It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

#   > stock_picker([17,3,6,9,15,8,6,1,10])
#   => [1,4]  # for a profit of $15 - $3 == $12

# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last day or the highest day is the first day.

# create an array of stock prices of a stock over time
nvidia_close_price = %w(185.41 171.88 174.19 180.34 185.61 191.13 192.51 191.52 188.52 186.47 187.67 184.84 183.32 178.07 186.23 187.05 183.14 185.81 184.94 184.86 185.04 189.11 187.24)



# iterate through the array to find the largest gap between a previous low number, and subsequent high number
# 
# Find Buy Point: pevious low number, that is before a high number that would provide the greatest gap
# find the lowest number, if the number after it is higher, throw it away, if its lower swap it in
#   this will help with situations like [2,1,3,10]
#   it will start with 2, then pick up 1, and keep it as the buy point
#   
# However, there are exceptions:
#   [3,10,1,0]
#   in this situation, youd end up with 0 if you just picked the lowest number, because there is a gap of 7
#   between 3 and 10, but no gap if you buy at the end, and get nothing, or even 1 to 0 you lose money.
#   
# Find rolling range, to determine sell point:
# 
# for each number in the stock prince
nvidia_close_price.map.with_index do |price, index|
  # starting range
  price_difference = -999999.99
  # Exceptions: you can never buy at index[-1]
  unless index == -1
    # compare that number to subsequent numbers
    trade_results = nvidia_close_price.map.each_with_index do |price_2, index_2|
      if index_2 > index
        if price_2 - price > price_difference
          price_difference = price_2 - price
          sell_index = index_2
          sell_price = price_2
        end
      end
    { :buy_index => index, :sell_index => sell_index, :price_difference => price_difference, :buy_price => price, :sell_price => sell_price }
    end
  end
  trade_results
end
#   instead of looking for a value we could be looking for a range.
#   for each number in the stock prince, compare that number to subsequent numbers
#   if the comparison is greater save the index value of the subsequent number and the difference
#     for each range/difference collection of start index, range & sell-point index
#       keep the group if range > current range
#       output results. 
# 
# Exceptions: you can never buy at index[-1], or sell at [0]