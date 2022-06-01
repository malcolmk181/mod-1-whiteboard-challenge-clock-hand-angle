def clock_angle(time)
    # code your solution here
    time_array = time.split(":")
    hour = time_array[0].to_f
    minute = time_array[1].to_f

    # Hour hand
    # 12 = 0 degrees
    # 3 = 90 degrees
    # 6 = 180 degrees
    # 9 = 270 degrees

    hour == 12 ? hour = 0 : nil

    degrees_per_hour = 360 / 12
    degrees_per_minute = 360 / 60

    minute_position = minute * degrees_per_minute
    hour_position = hour * degrees_per_hour + (degrees_per_hour * minute / 60)

    hour_position >= minute_position ? hour_position - minute_position :  360 - (minute_position - hour_position)
end
