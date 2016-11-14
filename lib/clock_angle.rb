class String
  define_method(:clock_angle) do
    hands = self.split(":")
    hour_hand = hands.at(0).to_f()
    minute_hand = hands.at(1).to_f()
    minute_degrees = minute_hand * 6
    hour_degrees = ((hour_hand * 30) + (minute_hand/2))
    degrees_apart = (hour_degrees - minute_degrees).abs
    if (degrees_apart > 180)
      360 - degrees_apart
    else
      degrees_apart
    end
  end
end
