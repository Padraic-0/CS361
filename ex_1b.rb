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

  def decrease_weight_by
    @weight -= AMOUNT
  end
end
