class SliderImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :fog
  
  process :resize_to_fit => [SliderPhoto::WIDTH * 2, 10000]
  
  version :thumb do
    process :resize_to_fill => [100, 100]
  end
end
