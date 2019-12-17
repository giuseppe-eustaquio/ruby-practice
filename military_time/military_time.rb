#!/usr/bin/env ruby
# frozen_string_literal: true

print 'Enter time (HHMM):'
military_time = gets.chomp
begin
  military_time = Integer military_time
  if (military_time > 2400) || (military_time % 100 > 59)
    puts 'Invalid time'
  elsif military_time < 1259
    puts "\n non-Military Time:" + military_time.to_s + 'AM'
  else
    print "\n non-Military Time:" + (military_time - 1200).to_s + 'PM'
  end
rescue
  puts 'Invalid Input!'
end
