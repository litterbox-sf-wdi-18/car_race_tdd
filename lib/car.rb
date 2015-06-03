class Car

  attr_accessor  :speed

  def initialize
    @speed = 0
  end

  def accelerate new_speed
    if new_speed.between?(0, 100) && new_speed > @speed
      @speed = new_speed
    else
      puts "Speed must be between 0 and 100 and greater than current speed"
    end
  end

end
