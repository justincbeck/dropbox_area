require File.expand_path(File.dirname(__FILE__)) + '/../spec_helper'

module DropboxArea
  describe VerticalPacker do
    let(:packer) { VerticalPacker.new }

    describe "pack" do
      it "should raise an exception when called" do
        lambda { packer.pack Rectangle.new(5, 5) }.should raise_error
      end
    end
  end
end