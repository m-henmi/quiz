#!/usr/bin/ruby
# coding: utf-8

start = Time.now

TIMES = 12
RANGE = -TIMES..TIMES
CELLS = RANGE.size
EXCLUSION = ["13","31","24","42"]

def examine(route)
  board = Array.new(CELLS){ Array.new(CELLS, -1)}
  row = TIMES
  col = TIMES
  log = 1
  board[row][col] = 0
  board[row][col + 1] = 0 

  route.each {|i|
    case i
    when 1
      col += 1
    when 2
      row +=1
    when 3
      col -= 1
    when 4
      row -=1
    end

    if board[row][col] >= 0 then
      return false
    end

    board[row][col] = log
    log += 1
  }

  return true
end

def roundtrip?(route)
  r = route.join
  EXCLUSION.each{|e|
    if r.include?(e) then
      return true
    end
  }

  return false
end

counter = 0

(1..4).to_a.repeated_permutation(TIMES - 1) {|route|
  next if roundtrip?(route)

  if examine(route) then
    counter += 1
  end
}

puts counter * 4

puts "[" + (Time.now - start).to_s + " sec.]"

=begin

多重配列の初期化に注意！

経路の全パターンを列挙し、妥当な経路か判定する

examine: 検査
exclusion: 除外する

初回 ：[370.0951683 sec.]
2回目：[111.9464029 sec.]
3回目：[27.8895952 sec.]

=end
