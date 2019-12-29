#!/usr/bin/env ruby

print <<~GREETING.chomp + " "
  Hello, world!
  What is your name?
GREETING
name = gets.chomp
puts "Welcome, #{name}!"
