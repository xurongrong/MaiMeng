CarrierWave.configure do |config|
  config.storage             = :qiniu
  config.qiniu_access_key    = ENV["8Qss0gDy4vDwl5xMypE9UXIPbjozTTJuiYuLPLsO"]
  config.qiniu_secret_key    = ENV["45mTezShdbmkJq2cwmHpV9PLCm9UlOM0fdTIpec0"]
  config.qiniu_bucket        = ENV["maimeng"]
  config.qiniu_bucket_domain = ENV["opz2nmtwx.bkt.clouddn.com"]
  config.qiniu_block_size    = 4*1024*1024
  config.qiniu_protocol      = "http"
  config.qiniu_up_host       = "http://up.qiniug.com"  #选择不同的区域时，"up.qiniug.com" 不同

end
