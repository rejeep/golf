class SliderPhoto < ActiveRecord::Base
  WIDTH = 700
  HEIGHT = 250
  
  mount_uploader :image, SliderImageUploader
  
  attr_writer :x, :y, :w, :h
  
  def crop!
    image.manipulate! do |img|
      img.crop!(x, y, w, h)
      img.resize_to_fit(WIDTH, HEIGHT)
    end
  end
  
  def cropped?
    w > 0 && h > 0
  end
  
  def x
    @x.to_i * 2
  end

  def y
    @y.to_i * 2
  end

  def w
    @w.to_i * 2
  end

  def h
    @h.to_i * 2
  end
end
