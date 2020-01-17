require "pry"
class RandomNumberGame
  attr_accessor :level, :tries, :random_number

  EASY_LEVEL = 10
  NORMAL_LEVEL = 100
  INSANE_LEVEL = 1000
  
 def start_game
      loop do
        guess()
        compare_guess() 

        if compare_guess == congrats 
          break
        end
      end
   end
  
  def initialize(level)
    max_number = case level
                 when 1 then EASY_LEVEL
                 when 2 then NORMAL_LEVEL
                 when 3 then INSANE_LEVEL
                 else raise ArgumentError, 'You have entered an invalid level'
                 end
    @random_number = rand(1..max_number)
    @guess = 0
    @tries = 1
    start_game()
   end

    def guess
     @guess = gets.chomp.to_i
    end

    def congrats
      if @tries == 1
        "You got it in your first guess!"
      else
        "You got it in #{tries} guesses!"
    end
  end

    def compare_guess
    if @guess == random_number
      congrats
    elsif guess > random_number
      @tries = @tries.to_i + 1
      "Too high. Guess again: "
    elsif @guess < random_number
      @tries = @tries.to_i + 1
     "Too low. Guess again: "
    else
    "Invalid Input"
    end
    end

   end 
