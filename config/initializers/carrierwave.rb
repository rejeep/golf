CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage = :s3

    config.s3_access_key_id = ENV['S3_ACCESS_KEY_ID']
    config.s3_secret_access_key = ENV['S3_SECRET_ACCESS_KEY']
    config.s3_bucket = 'leadingedge'
    config.s3_region = 'eu-west-1'

    config.root = Rails.root.join('tmp')
    config.cache_dir = 'carrierwave'
  else
    config.storage = :file
  end
end
