class GuessNumber
  attr_reader :guess, :random_number

  easy_level = 10
  normal_level = 100
  insane_level = 1000
  def initialize(level)

    num_range = if level == 1
      easy_level
    elif level == 2
      normal_level
    elsif level == 3
      insane_level
    end
@random_number = randomize_number(num_range)
  end

  def randomize_number(x)
    rand(x) 
  end
end 
end
