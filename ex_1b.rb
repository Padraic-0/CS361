class Bike
  # ...
end

class RedBike < Bike

  AMOUNT = 10

  def initialize(height, weight)
    @height = height
    @weight = weight
    @color = red
  end

  def getColor
    @color
  end

  def getHeight
    @height
  end

  def decreaseWeight
    @weight -= AMOUNT
  end
end
#1. Meaningful names say what they are, and reduce the time needed to analyze the name while in use to see what it does. They also need to be- 
# predictable and not change format. If you are usign "_" in names don't also use Uppercase.
