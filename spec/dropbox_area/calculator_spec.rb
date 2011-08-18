require File.expand_path(File.dirname(__FILE__)) + '/../spec_helper'

module DropboxArea
  describe Calculator do
    let(:output) { double('output').as_null_object }
    let(:calc) { Calculator.new(output) }

    describe "execute with a single file" do
      it "should return the area of the file" do
        file_dim = [2, 2]
        output.should_receive(:puts).with(4)
        calc.execute(1, [file_dim])
      end
    end
  end
end
