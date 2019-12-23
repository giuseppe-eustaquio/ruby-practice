module RomanConvertable
  ROMAN_DIGITS = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }.freeze

  def to_roman
    num = self
    raise(RangeError, "Number must be from 1-3999") unless num < 4000 && num.positive?

    "".tap do |roman_numeral|
      ROMAN_DIGITS.each do |key, value|
        roman_numeral << key * (num / value)
        num %= value
      end
    end
  end
end
