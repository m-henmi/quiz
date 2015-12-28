coins = [10, 50, 100, 500]
counter = 0

(2..15).each do |i|
  coins.repeated_combination(i).each{|coin_set|
    counter += 1 if coin_set.inject(:+) == 1000
  }
end

puts counter
