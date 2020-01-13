module MilitaryTimeConversion
  # Converts military time to 12-hour format
  class TwelveHourTime
    attr_reader :hours, :minutes, :period

    def initialize(military_time)
      # Valid military time is between 0000 to 2359
      raise ArgumentError if military_time >= 2360 || military_time.negative?

      @hours = calculate_hours(military_time)
      @minutes = calculate_minutes(military_time)
    end

    def to_s
      format("%<hh>02d:%<mm>02d %<xx>s",
             hh: hours, mm: minutes, xx: period)
    end

    private

    def calculate_hours(military_time)
      hours = military_time / 100
      @period = calculate_period(hours)

      # 00xx and 12xx are both 12:xx in the 12-hour format.
      [0, 12].include?(hours) ? 12 : hours % 12
    end

    def calculate_minutes(military_time)
      minutes = military_time % 100
      raise ArgumentError if minutes >= 60

      minutes
    end

    def calculate_period(hours)
      hours < 12 ? "AM" : "PM"
    end
  end
end
