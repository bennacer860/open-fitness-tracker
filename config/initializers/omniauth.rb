Rails.application.config.middleware.use OmniAuth::Builder do

  provider :fitbit, Configuration.where(:name=>"consumer_key").first.value, Configuration.where(:name=>"consumer_secret").first.value

end

