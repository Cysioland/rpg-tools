#!/usr/bin/env ruby

case ARGV.count
  when 0
    dice_string = '1d6'
  when 1
    dice_string = ARGV[0]
  else
    abort 'Too many arguments, expected 0..1, got %d' % [ARGV.count]
end

dice_params = dice_string.split "d", 2
result_array = []

i = 1
until i > dice_params[0].to_i
  result_array << rand(1..dice_params[1].to_i)
  i += 1
end

puts "Result: %s" % [result_array]