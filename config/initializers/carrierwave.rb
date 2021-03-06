CarrierWave.configure do |config|
    config.storage = :fog
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region: 'us-east-1'
  }

    case Rails.env
        when 'development'
            config.fog_directory  = 'protospacebucket'
            config.asset_host = 'https://s3.amazonaws.com/protospacebucket'
        when 'production'
            config.fog_directory  = 'protospacebucket'
            config.asset_host = 'https://s3.amazonaws.com/protospacebucket'
        when 'test'
            config.fog_directory  = 'protospacebucket'
            config.asset_host = 'https://s3.amazonaws.com/protospacebucket'
    end
end
