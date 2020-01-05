#!/usr/bin/env ruby
print "Enter password to validate:"

password = gets.chomp

puts PasswordValidator.password_strength(password)
