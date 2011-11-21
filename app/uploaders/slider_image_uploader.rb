class SliderImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file
  
  process :resize_to_fit => [SliderPhoto::WIDTH * 2, 10000]
end
