#!/usr/bin/ruby
# coding: utf-8

start = Time.now

(1..100).each {|i|
  flag = false
  (1..100).each {|j|
    flag = !flag if i % j == 0
  }

  puts i if flag
}

puts "[" + (Time.now - start).to_s + " sec.]"

=begin

=end
