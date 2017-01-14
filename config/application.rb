# frozen_string_literal: true
require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
# require 'action_mailer/railtie'
require 'action_view/railtie'
# require 'action_cable/engine'
require 'sprockets/railtie'
require 'rails/test_unit/railtie'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Clarifai
  class Application < Rails::Application
    config.i18n.available_locales = [:en, :ja]
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'

    config.generators do |g|
      g.assets false
      g.helper false
      g.test_framework :rspec
      g.template_engine :slim
      g.stylesheets false
    end
  end
end
