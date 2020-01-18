class RandomNumberGame
  attr_reader :difficulty_level, :the_number
  attr_accessor :tries

  EASY_LEVEL = 10
  NORMAL_LEVEL = 100
  INSANE_LEVEL = 1000

  def guess_number(guess:)
    self.tries += 1
    if guess < the_number
      -1
    elsif guess > the_number
      1
    else
      self.won = true
      0
    end
  end

  def initialize(level:)
    @difficulty_level = level
    @the_number = generate_number
    @tries = 0
    @won = false
  end

  def generate_number
    max_number = case difficulty_level
                 when 1 then EASY_LEVEL
                 when 2 then NORMAL_LEVEL
                 when 3 then INSANE_LEVEL
                 else raise ArgumentError, "You have entered an invalid level."
                 end
    rand(1..max_number)
  end

  def won?
    won
  end

  private

  attr_accessor :won
end
