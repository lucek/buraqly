OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 294425004072180, "3428ceecc88837c5159c596cd2ec4dd7"
end