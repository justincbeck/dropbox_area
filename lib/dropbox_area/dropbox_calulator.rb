module DropboxArea
  class DropboxFile
    attr_accessor :height, :width

    def initialize width, height
      self.height = height
      self.width = width
    end

    def area
      height * width
    end
  end

  class DropboxWarehouse
    attr_accessor :height, :width

    def initialize file
      self.height = file.height
      self.width = file.width
    end

    def area
      height * width
    end
  end

  class DropboxCalculator
    @warehouse

    def initialize output
      @output = output
      @error = $stderr
    end

    def execute dims
      dims.sort! { |x, y| (y[0] * y[1]) <=> (x[0] * x[1]) }.each do |f|
        file = DropboxFile.new f[0], f[1]
        if @warehouse.nil?
          @warehouse = DropboxWarehouse.new file
        else
          # TODO: Check for a space
        end
      end

      area = dims[0][0] * dims[0][1]
      @output.puts area
      @error.puts draw dims
    end

    private

    def draw dims
      "Not Implemented"
    end
  end
end
