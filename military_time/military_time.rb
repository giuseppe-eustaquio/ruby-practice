#!/usr/bin/env ruby

print "Enter time (HHMM):"
military_time = gets.to_i  
if (military_time > 2400) || (military_time % 100 > 59)
    puts "Invalid time"      
elsif (military_time < 1259) 
    puts "\n Military Time:" + military_time.to_s +"AM"
else
    print "\n Military Time:" + (military_time - 1200).to_s + "PM"
end