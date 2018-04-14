CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: 'AKIAIMZZP6NZF4SFWKMA',
        aws_secret_access_key: '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',
        region: 'us-west-2',
    }
    config.fog_directory    =  'studiofun-s3-bucket3'
end

