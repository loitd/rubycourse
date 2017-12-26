# config/initializers/recaptcha.rb
Recaptcha.configure do |config|
  config.site_key  = '6LcPSD4UAAAAAMlGHyPTFzarw7pclKTFrNfWV01E'
  config.secret_key = '6LcPSD4UAAAAACOB4SyEbCnKod1MCItd8JoSdxNs'
  # Uncomment the following line if you are using a proxy server:
  # config.proxy = 'http://myproxy.com.au:8080'
end