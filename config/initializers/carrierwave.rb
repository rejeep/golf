 CarrierWave.configure do |config|
   config.s3_access_key_id = ENV['S3_ACCESS_KEY_ID']
   config.s3_secret_access_key = ENV['S3_SECRET_ACCESS_KEY']
   config.s3_bucket = 'leadingedge'
   config.s3_region = 'eu-west-1'
 end
