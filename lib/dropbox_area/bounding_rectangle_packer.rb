module DropboxArea
  class BoundingRectanglePacker
    def initialize
      @bounding_rectangle = BoundingRectangle.new
    end

    def pack rectangle
      # TODO: Make the magic happen
      packed = PackedRectangle.new(rectangle)
      @bounding_rectangle.add(packed)
      @bounding_rectangle
    end
  end
end
