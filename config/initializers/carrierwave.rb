CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['AWS_KEY'],
    aws_secret_access_key: ENV['AWS_SECRET_KEY'],
    region: ENV['REGION'],
  }
  config.fog_directory = 'atsumare-indies-band-mp3'
end

CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/