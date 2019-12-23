#!/usr/bin/env ruby
require_relative "roman_convertable"

Integer.include RomanConvertable

print "Enter a number: "
number = gets.to_i
begin
  puts number.to_roman
rescue RangeError => e
  puts e.message
end
