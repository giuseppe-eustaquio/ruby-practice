#!/usr/bin/env ruby
# frozen_string_literal: true

print <<~GREETING.chomp + " "
  Hello, world!
  What is your name?
GREETING
name = gets.chomp
puts "Welcome " + name + "!"
