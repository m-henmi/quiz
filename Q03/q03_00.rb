#!/usr/bin/ruby
# coding: utf-8

start = Time.now

cards = Array.new(100, false)

(2..100).each {|i|
  j = i
  while j < 100
    cards[j - 1] = !cards[j - 1]
    j += i
  end
}

cards.each_index {|i|
  puts (i + 1).to_s if !cards[i]
}

puts "[" + (Time.now - start).to_s + " sec.]"

=begin

=end
