OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, configatron.facebook.app_id, configatron.facebook.secret
end