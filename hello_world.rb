#!/usr/bin/env ruby
# frozen_string_literal: true

puts <<~GREETING
  Hello, world!
  What is your name?
GREETING
name = gets
puts 'Welcome ' + name + '!'
