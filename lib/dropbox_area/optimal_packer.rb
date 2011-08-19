module DropboxArea
  class OptimalPacker < Packer
    def pack rectangle
      packed = PackedRectangle.new(rectangle)
      @bounding_rectangle.add(packed)
      @bounding_rectangle
    end
  end
end
