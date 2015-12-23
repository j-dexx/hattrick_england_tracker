Rails.application.config.middleware.use OmniAuth::Builder do
  provider :hattrick, ENV['HATTRICK_KEY'], ENV['HATTRICK_SECRET']
end
