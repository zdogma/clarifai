# frozen_string_literal: true
ClarifaiRuby.configure do |config|
  config.base_url       = 'https://api.clarifai.com'
  config.version_path   = '/v1'
  config.client_id      = ServerSettings.clarifai.init_with_app_id
  config.client_secret  = ServerSettings.clarifai.app_secret
end
