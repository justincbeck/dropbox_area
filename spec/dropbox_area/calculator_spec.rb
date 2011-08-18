require File.expand_path(File.dirname(__FILE__)) + '/../spec_helper'

module DropboxArea
  describe DropboxCalculator do
    let(:output) { double('output').as_null_object }
    let(:calc) { DropboxCalculator.new(output) }

    describe "execute with a single file" do
      it "should return the area of the file" do
        output.should_receive(:puts).with(4)
        calc.execute([[2,2]])
      end
    end

    describe "execute with two files" do
      it "should return the smallest area the two files can take" do
        output.should_receive(:puts).with(8)
        calc.execute([[3, 2], [1, 2]] )
      end
    end
  end
end
