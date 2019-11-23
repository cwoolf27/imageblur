class Image
  def initialize (image)
    @image = image
  end

  def output_image
    @image.each do |img|
      puts img.join.to_s
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
image.output_image