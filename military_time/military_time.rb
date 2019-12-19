#!/usr/bin/env ruby
# frozen_string_literal: true

print 'Enter time (HHMM):'
military_time = gets.chomp
begin
  military_time = Integer (military_time)
  mm = (military_time % 100)
  string_mm = "%02d" % mm
  if military_time < 1200
    meridies = "AM"
  else
    meridies = "PM"
  end
  if (military_time > 2400) || (mm > 59)
    puts 'Invalid time'
  elsif military_time < 1259
    hh = (military_time - mm) / 100
    puts "\n non-Military Time: #{hh}:#{string_mm} #{meridies}"
  else
    hh = ((military_time - mm - 1200) % 1000) / 100
    print "\n non-Military Time: #{hh}:#{string_mm} #{meridies}"
  end
rescue
  puts 'Invalid input!'
end
