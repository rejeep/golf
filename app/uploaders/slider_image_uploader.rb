class SliderImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file
  
  process :resize_to_fit => [760 * 2, 10000]
end
