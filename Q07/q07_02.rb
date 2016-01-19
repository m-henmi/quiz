#!/usr/bin/ruby
# coding: utf-8

start = Time.now

require 'date'

from_left = 19641010.to_s(2)[4, 8].to_i(2)
to_left = 20200724.to_s(2)[4, 8].to_i(2)

from_left.upto(to_left){|i|
  l = "%08b" % i
  r = l.reverse
  (0..1).each{|m|
    value = "1001#{l}#{m}#{r}1001"
    begin
      puts Data.parse(value.to_i(2).to_s).strftime('%Y%m%d')
    rescue
    end
  }
}

puts "[" + (Time.now - start).to_s + " sec.]"

=begin

1964年10月10日 から 2020年7月24日 まで

=end
