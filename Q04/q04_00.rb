#!/usr/bin/ruby
# coding: utf-8

start = Time.now

persons = 5
length = 100
parts = [length]
counter = 0

while parts[0] > 1
  after = []
  persons.times {|i|
    if parts.empty? then
      break
    else
      part = parts.shift
      if part >= 2 then
        first = part / 2
        second = part - part / 2
        after.push(first, second)
      end
    end
  }
  parts.concat(after)

  p parts.sort!.reverse!
  counter += 1
end

puts "回数:[" + counter.to_s + "]"

puts "[" + (Time.now - start).to_s + " sec.]"

=begin

timber: 材木

=end
