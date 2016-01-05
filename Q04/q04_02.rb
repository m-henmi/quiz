#!/usr/bin/ruby
# coding: utf-8

start = Time.now

def cutbar(m, n)
  count = 0
  current = 1
  while n > current do
    current += current < m ? current : m
    count += 1
  end
  puts count
end

cutbar(3, 20)
cutbar(5, 100)

puts "[" + (Time.now - start).to_s + " sec.]"

=begin

* current は現在の棒の数

=end
