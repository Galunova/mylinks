require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Mylinks
  class Application < Rails::Application
    I18n.default_locale = :ru
  end
end
