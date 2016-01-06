#!/usr/bin/ruby
# coding: utf-8

start = Time.now

def collatz(base, n)
  n = n.even? ? n / 2 : n * 3 + 1

  if n == 1 then
    false
  elsif n == base then
    true
  else
    collatz(base, n)
  end
end

n = 2
counter = 0
while n <= 10000 do
  counter += 1 if collatz(n, n * 3 + 1)
  n += 2
end

puts "ans.: " + counter.to_s

puts "[" + (Time.now - start).to_s + " sec.]"

=begin

=end
