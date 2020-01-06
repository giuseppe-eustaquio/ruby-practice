#!/usr/bin/env ruby
require_relative "password_validator"
print "Enter password to validate:"

password = gets.chomp

puts PasswordValidator.password_strength(password)
