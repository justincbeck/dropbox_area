class BoundingRectangle
  attr_accessor :height, :width

  def initialize
    @height = 0
    @width = 0
    @rectangles = Array.new
  end

  def area
    @height * @width
  end

  def add packed_rectangle
    @rectangles << packed_rectangle
  end
end