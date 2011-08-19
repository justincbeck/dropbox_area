module DropboxArea
  class Packer
    def initialize
      @bounding_rectangle = BoundingRectangle.new
    end

    def pack rectangle
      raise Exception.new "pack(r) method must be overridden"
    end
  end
end