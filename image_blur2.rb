class Image
  def initialize (image)
    @image = image
  end

  def output_image
    @image.each do |img|
      puts img.join.to_s
    end
  end

  def blur
    # get all the 1s
    # find the position above it in the array if it exists
    # find the position to the left in the array if it exists
    # find the position to the right in the array if it exists
    # find the position below in the array if it exists
    # transform into 1's if they're 0
    get_ones
    @coordinates.each do |coordinate|
      row = coordinate[0]
      column = coordinate[1]
      above = row - 1
      below = row + 1
      left = column - 1
      right = column + 1
      if @image[above][column] == 0
        @image[above][column] = 1
      end
      if @image[below][column] == 0
        @image[below][column] = 1
      end
      if @image[row][left] == 0
        @image[row][left] = 1
      end
      if @image[row][right] == 0
        @image[row][right] = 1
      end
    end
  end

  def get_ones
    @coordinates = []
    @image.each_with_index do |img, row|
      img.each_with_index do |value, column|
        if value == 1
          @coordinates << [row, column]
          # puts "ye"
          # puts row
          # puts column
        end
      end
    end
  end

end

class Image2
  def initialize
    
  end

end

image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0]
])

image.blur
image.output_image