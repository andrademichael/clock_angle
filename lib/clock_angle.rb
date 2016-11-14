class String
  define_method(:clock_angle) do
    if (self == "12:00")
      0
    else
      hands = self.split(":")
      hour_hand = hands.at(0).to_i()
      minute_hand = hands.at(1).to_i()
      if (hour_hand <= 6)
        hour_hand * 30
      end

    end
  end
end
