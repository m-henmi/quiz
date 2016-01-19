#!/usr/bin/ruby
# coding: utf-8

start = Time.now

require 'date'

term = Date.parse('19641010')..Date.parse('20200724')

term_list = term.map{|d| d.strftime('%Y%m%d').to_i}

puts term_list.select{|d| d == d.to_s(2).reverse.to_i(2)}

puts "[" + (Time.now - start).to_s + " sec.]"

=begin

1964年10月10日 から 2020年7月24日 まで

=end
