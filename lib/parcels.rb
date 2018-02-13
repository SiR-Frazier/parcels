class Parcel
  def initialize(width, length, height, weight, speed, distance)
    @width = width
    @length = length
    @height = height
    @weight = weight
    @speed = speed
    @distance = distance
  end

  def volume()
    volume = @width * @length * @height
    if (volume >= 500)
      @volume_cost = 5
    else
      @volume_cost = 0
    end
  end

  def weight()
    if (@weight <= 5)
      @weight_cost = 5
    else
      @weight_cost = 10
    end
  end

  def speed()
    if @speed == 5
      @speed_cost = 5
    else
      @speed_cost = 0
    end
  end

  def distance()
    if @distance == 1
      @distance_cost = 5
    else
      @distance_cost = 0
    end
  end

  def cost_to_ship()
    self.weight()
    self.distance()
    self.speed()
    self.volume()
    cost = (@distance_cost + @speed_cost + @volume_cost + @weight_cost)
  end
end
