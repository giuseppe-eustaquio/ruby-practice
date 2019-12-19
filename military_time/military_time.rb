class MilitaryTime
  attr_reader :hours, :minutes, :period

  def initialize(military_time)
    # Valid military time is between 0000 to 2359
    raise ArgumentError if military_time >= 2360 || military_time.negative?

    @hours = calculate_hours(military_time)
    @minutes = calculate_minutes(military_time)
    @period = calculate_period
  end

  def call
    format("%<hh>02d:%<mm>02d %<xx>s",
           hh: hours, mm: minutes, xx: period)
  end

  private

  def calculate_hours(military_time)
    hours = military_time / 100
    case hours
    when 0 then 12
    when 1..12 then hours
    when 13..23 then hours % 12
    end
  end

  def calculate_minutes(military_time)
    minutes = military_time % 100
    raise ArgumentError if minutes >= 60

    minutes
  end

  def calculate_period
    (hours / 12).zero? ? "AM" : "PM"
  end
end
