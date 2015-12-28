a = 10

until a.to_s(10) == a.to_s(10).reverse &&
     a.to_s(8) == a.to_s(8).reverse &&
      a.to_s(2) == a.to_s(2).reverse
  a += 1
end

puts a.to_s(10) + ", " + a.to_s(8) + ", " + a.to_s(2)
