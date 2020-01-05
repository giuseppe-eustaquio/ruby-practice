class PasswordValidator
  MINIMUM_PASSWORD_LENGTH = 8

  def self.password_strength(password)
    case password
    when very_strong?(password)
      "very strong"
    when strong?(password)
      "strong"
    when weak?(password)
      "weak"
    when very_weak?(password)
      "very weak"
    else
      "very weak"
    end
  end

  private

  def contains_letter?(password)
    !!(password =~ /[[:alpha:]]/)
  end 

  def contains_number?(password)
    !!(password =~ /[[:digit:]]/)
  end

  def contains_special_character?(password)
    !!(password =~ /[[:punct:]]/)
  end
  
  def meets_minimum_length?(password)
    password.length >= MINIMUM_PASSWORD_LENGTH
  end

  def very_strong?(password)
    contains_letter?(password) &&
      contains_number?(password) && 
      contains_special_character?(password) && 
      meets_minimum_length?(password)
  end

  def strong?(password)
    contains_letter?(password) &&
    contains_number?(password) &&
    meets_minimum_length?(password)
  end

  def weak?(password)
    contains_letter(password)
  end

  def very_weak?(password)
    contains_number?(password)
  end

end 