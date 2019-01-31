CarrierWave.configure do |conf|
  if Rails.env.test?
    conf.storage = :file
  else
    conf.storage        = :tencent_cos  # set as default storage
    conf.tencent_cos    = {
      secret_id:      ENV['QCLOUD_COS_ID'],
      secret_key:     ENV['QCLOUD_COS_KEY'],
      host:           ENV['QCLOUD_COS_HOST'],
      parent_path:    ENV['QCLOUD_COS_PARENT'],
    }
  end
end