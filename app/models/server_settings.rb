# frozen_string_literal: true
class ServerSettings < Settingslogic
  source "#{Rails.root}/config/server_settings.yml"
  namespace Rails.env
end
