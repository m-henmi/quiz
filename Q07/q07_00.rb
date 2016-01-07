#!/usr/bin/ruby
# coding: utf-8

start = Time.now

ONEDAY = 60 * 60 * 24

from = Time.gm(1964, 10, 10)
to = Time.gm(2020, 7, 24)

while from <= to do
  binary = from.strftime("%Y%m%d").to_i.to_s(2)
  puts from.to_s if binary == binary.reverse
  
  from += ONEDAY
end

puts "[" + (Time.now - start).to_s + " sec.]"

=begin

1964年10月10日 から 2020年7月24日 まで

=end
