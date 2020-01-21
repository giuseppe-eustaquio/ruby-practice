#!/usr/bin/env ruby
require_relative "random_number_game"

def input_difficulty_level
  print <<~MESSAGE.chop
    Let's Play Guess the Number
    Select difficulty (1, 2, 3):\s
  MESSAGE
  gets.to_i
end

def new_game
  random_number_game = nil
  loop do
    level = input_difficulty_level
    begin
      random_number_game = RandomNumberGame.new(level: level)
      break
    rescue ArgumentError => e
      puts e.message
    end
  end
  random_number_game
end

new_game
print "I have a number. "
loop do
  print "What's your guess? "
  result = random_number_game.guess_number(guess: gets.strip.to_i)
  case result
  when -1
    print "Your guess is too low. "
  when 1
    print "Your guess is too high. "
  else
    puts "You guesssed the number in #{random_number_game.tries} tries!"
    break
  end
end
