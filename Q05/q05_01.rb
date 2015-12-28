counter = 0

(0..2).each{|coin500|
  (0..10).each{|coin100|
    (0..15).each{|coin50|
      (0..15).each{|coin10|
        if coin500  + coin100 + coin50 + coin10 <= 15 then
          if coin500 * 500 + coin100 * 100 +
             coin50 * 50 + coin10 * 10 == 1000 then
            counter += 1
          end
        end
      }
    }
  }
}

puts counter
