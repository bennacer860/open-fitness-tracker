Rails.application.config.middleware.use OmniAuth::Builder do
  provider :fitbit, '2e7beac860d440e5aa68e10d679ff3bf', '856dc857059c4cbba43bfaa8dbf56d98'
end

