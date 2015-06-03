require_relative 'car'

class Race

  attr_accessor :cars

  def initialize
    @cars = []
    car1 = Car.new
    car1.speed = rand(0..100)
    car2 = Car.new
    car2.speed = rand(0..100)
    @cars << car1 << car2
  end

  def winner
    return @cars.first if @cars.first.speed > @cars.last.speed
    @cars.last
  end

  def loser
    return @cars.first if @cars.first.speed < @cars.last.speed
    @cars.last
  end

end
