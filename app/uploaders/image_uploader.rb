class ImageUploader < SecureUploader
  include CarrierWave::RMagick

  version :thumb do
    process :resize_to_fill => [100, 100]
  end
end
