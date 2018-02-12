class Parcel
  def initialize(width, length, height)
    @width = width
    @length = length
    @height = height
  end

  def volume_calculator
    @volume = @width * @length * @height
  end

end
