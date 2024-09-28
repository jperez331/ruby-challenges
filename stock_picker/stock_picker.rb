require 'pry'

def stonks(prices)

  days_pair = [0,0]
  max_profit = 0
  min = prices[0]

  prices.each_with_index do | price,  day|
    if price < min
      min = price
    end

    profit = price - min

    if (profit > max_profit)
      max_profit = profit
      days_pair = [prices.index(min), day]
    end
  end
  days_pair

end