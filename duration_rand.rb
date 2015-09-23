#!/usr/bin/env ruby

require 'chronic_duration'

case ARGV.count
  when 0..1
    abort 'Usage: duration_rand <minimum> <maximum>'
  when 2
    from = ARGV[0]
    to = ARGV[1]
  else
    abort 'Too many arguments, expected 2, got %d' % [ARGV.count]
end

from = ChronicDuration.parse from
to = ChronicDuration.parse to

puts 'Action will happen at %s' % [((Time.now + rand(from..to)).strftime '%H:%M:%S')]
