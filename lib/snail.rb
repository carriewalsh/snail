class Snail
  attr_reader :name, :matrix, :row_length, :column_length, :array

  def initialize(name,matrix)
    @name = name
    @matrix = matrix
    @array = []
  end

  def get_top_row
    unless @matrix.empty?
      @array << @matrix.shift
      @array.flatten!
    end
  end

  def get_last_elements
    unless @matrix.empty?
      for row in @matrix do
        @array << row.pop
      end
      @array
    end
  end

  def get_bottom_row
    unless @matrix.empty?
      forward = @matrix.pop
      @array << forward.reverse
      @array.flatten!
    end
  end

  def get_first_elements
    unless @matrix.empty?
      forward = []
      for row in @matrix do
        forward << row.shift
      end
      @array << forward.reverse
      @array.flatten!
    end
  end

  def get_array
    until @matrix.empty? do
        get_top_row
        get_last_elements
        get_bottom_row
        get_first_elements
    end
    @array
  end
end
