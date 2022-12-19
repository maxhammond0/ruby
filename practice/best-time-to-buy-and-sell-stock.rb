# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  if prices.size < 2 then 0 end
  max = 0 # current greatest profit
  min = prices[0] # inital pivot variable to calculate profit

  i = 1
  while i < prices.size
    profit = prices[i] - min
    max = [max, profit].max

    if profit < 0 then min = prices[i] end
    i += 1
  end

  max
end

prices = [7,1,5,3,6,4]
puts max_profit(prices)
