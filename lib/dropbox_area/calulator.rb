module DropboxArea
  class Calculator
    def initialize output
      @output = output
      @error = $stderr
    end

    def execute num_files, dims
      area = dims[0][0] * dims[0][1]
      @output.puts area
      @error.puts draw num_files, dims
    end

    private

    def draw num_files, dims
      "Not Implemented"
    end
  end
end
