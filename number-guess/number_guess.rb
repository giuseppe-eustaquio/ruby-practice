#!/usr/bin/env ruby
require_relative "number_game"
puts "Let's Play Guess the Number"
print "Select difficulty (1,2,3):"

level = gets.chomp

puts GuessNumber.random_number
