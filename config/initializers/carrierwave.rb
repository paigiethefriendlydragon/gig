CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    host:                  's3.amazonaws.com'
  }
  if Rails.env.production?
    config.fog_directory  = ENV["PRODUCTION_S3_BUCKET"]
  else
    config.fog_directory  = ENV["DEVELOPMENT_S3_BUCKET"]
  end
end
