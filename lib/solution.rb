def clock_angle(time)
    # code your solution here
    time_array = time.split(":")
    h = time_array[0].to_f
    m = time_array[1].to_f
    if h > 12
      h = h - 12
    # elsif h < 0
    #   return "GO HOME YOU'RE DRUNK!"
    # elsif m > 60
    #   return "GO HOME YOU'RE DRUNK!"
    elsif h == 12
      h = 0
    elsif m == 60
      m = 0
    end
    hour = (h * 60 + m) * 0.5
    minute = 6 * m
    angle = hour - minute
    if angle > 180
      angle = 360 - angle
    end
    angle
end