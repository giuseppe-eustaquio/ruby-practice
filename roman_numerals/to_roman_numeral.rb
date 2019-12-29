#!/usr/bin/env ruby
require_relative "roman_convertable"

using RomanConvertable

print "Enter a number to convert to roman numerals: "
number = gets.to_i
begin
  puts "#{number} is #{number.to_roman} in roman numerals"
rescue RangeError => e
  puts e.message
end
