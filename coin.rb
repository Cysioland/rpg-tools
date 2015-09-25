#!/usr/bin/env ruby

case ARGV.count
  when 0
    coin_amount = 1
  when 1
    coin_amount = ARGV[0].to_i
  else
    abort 'Too many arguments, expected 0..1, got %d' % [ARGV.count]
end

result_array = []

i = 1
until i > coin_amount
  result_array << ((rand(0..1) == 0) ? 'heads' : 'tails')
  i += 1
end

puts "Result: %s" % [result_array]