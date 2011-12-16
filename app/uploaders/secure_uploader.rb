class SecureUploader < CarrierWave::Uploader::Base
  def filename
    if @filename
      name = @filename.chomp(".#{file.extension}")

      "#{secure_token}-#{name}.#{file.extension}" if original_filename.present?
    end
  end

  
  protected
  
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.hex(8))
  end
end