#!/usr/bin/env ruby

require MilitaryTime

print "Input military time (xxxx): "

# Get a number from stdin. Make it base-10 to avoid converting 0123 to octal
military_time = Integer(gets, 10)

puts MilitaryTime.new(military_time).call
