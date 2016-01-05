#!/usr/bin/ruby
# coding: utf-8

start = Time.now

def cutbar(m, n, current)
  if current >= n then
    0
  elsif current < m then
    1 + cutbar(m, n, current * 2)
  else
    1 + cutbar(m, n, current + m)
  end
end

puts cutbar(3, 20, 1)
puts cutbar(5, 100, 1)

puts "[" + (Time.now - start).to_s + " sec.]"

=begin

* current は現在の棒の数

=end
