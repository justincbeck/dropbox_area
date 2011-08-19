require File.expand_path(File.dirname(__FILE__)) + '/../spec_helper'

module DropboxArea
  describe BoundingRectanglePacker do
    let(:packer) { BoundingRectanglePacker.new }

    describe "execute with a rectangle" do
      it "should return the area of the rectangle" do
        bounded_rectangle = packer.pack(Rectangle.new(2, 2))
        bounded_rectangle.area.should == 4
      end
    end

    describe "execute with two files" do
      it "should return the smallest area the two files can take" do
        packer.pack(Rectangle.new(3, 2))
        bounded_rectangle = packer.pack(Rectangle.new(2, 1))
        bounded_rectangle.area.should == 8
      end
    end
  end
end
