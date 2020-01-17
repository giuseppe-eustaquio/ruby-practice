#!/usr/bin/env ruby
require_relative "number_game"
my_str = <<-Foo
Let's Play Guess the Number
Select difficulty (1,2,3):
Foo

print my_str

level = gets.to_i

game = RandomNumberGame.new(level)
game.start_game
print "I have a number. What's your guess?: "