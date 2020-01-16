require "pry"
class RandomNumberGame
  attr_accessor :level, :tries, :random_number

  EASY_LEVEL = 10
  NORMAL_LEVEL = 100
  INSANE_LEVEL = 1000

  def initialize(level)
    max_number = case level
                 when 1 then EASY_LEVEL
                 when 2 then NORMAL_LEVEL
                 when 3 then INSANE_LEVEL
                 else raise ArgumentError, 'You have entered an invalid level'
                 end
    @random_number = rand(1..max_number)
    
    def new_game
puts "I have my number. What's your guess? "
    guess = 0
tries = tries.to_i
   loop do
     guess = gets.chomp.to_i
    if guess == random_number
      puts "You got it in #{tries.to_i} guesses!"
      break
    elsif guess > random_number
      tries = tries + 1
      puts "Too high. Guess again: "
    elsif guess < random_number
      tries = tries + 1
      puts "Too low. Guess again: "
    else
      puts "your guess is #{guess.to_i}"
      puts "Correct number: #{random_number.to_i}"
      puts "Tries: #{tries.to_i}"
      puts  "Invalid Input"
    end
    end
   end
  end 
end
