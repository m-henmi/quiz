counter = 0
for i in 0..(1000 / 500)
  for j in 0..(1000 / 100)
    for k in 0..(1000 / 50)
      for l in 0..(1000 / 10)
        ans = i * 500 + j * 100 + k * 50 + l * 10
        coin = i + j + k + l
        if (ans == 1000) && (coin <= 15) then
          counter += 1
        end
      end
    end
  end
end

puts counter
