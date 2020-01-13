#!/usr/bin/env ruby

require_relative "military_time"

print "Input military time (xxxx): "

begin
  # Get a number from stdin. Make it base-10 to avoid converting "0123" to octal
  military_time = Integer(gets, 10)
  puts MilitaryTimeConversion::TwelveHourTime.new(military_time)
rescue ArgumentError
  puts "You've entered an invalid time."
end
