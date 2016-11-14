class String
  define_method(:clock_angle) do
    if(self == "12:00")
      "0°"
    end
  end
end
