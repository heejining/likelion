CarrierWave.configure do |config|
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
        provider: 'AWS',
        aws_access_key_id: 'AKIAJ5DCE335B3ZK3DFQ',
        aws_secret_access_key: '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',
        regions: 'us-west-2',
    }
    config.fog_directory    =  'studiofund-s3-bucket1'
end