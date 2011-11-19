class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick

  storage :file

  version :thumb do
    process :resize_to_fill => [100, 100]
  end
end
