#!/usr/bin/ruby
# coding: utf-8

operator = ["*",  ""]

for num in 1000..9999
  numString = num.to_s
  operator.repeated_permutation(3){|ope|
    exp = numString[0] + ope[0] + numString[1] + ope[1] + numString[2] + ope[2] + numString[3]

    if exp.length > 4 then
      exp2 = exp.gsub(/0*([0-9]+)/, '\\1')
      
      ans = eval(exp2).to_s
      if ans.length >= 4 && numString == ans.reverse then
        puts exp + " = " + ans
      end
    end
  }
end
