require_relative 'boot'

require 'rails'
require 'active_model/railtie'
require 'active_record/railtie'
require 'action_controller/railtie'
require 'action_view/railtie'
require 'rails/test_unit/railtie'

Bundler.require(*Rails.groups)

module FurryMemory
  class Application < Rails::Application
    config.load_defaults 5.1

    config.api_only = true

    config.cache_store = :redis_store, "#{Rails.application.secrets.redis_url}/0/cache"

    config.active_record.observers = Dir.glob('app/observers/*').map do |observer|
      observer.gsub('app/observers/', '').gsub('.rb', '').to_sym
    end

    config.generators do |g|
      g.test_framework :rspec
      g.stylesheets false
      g.factory_bot true
    end
  end
end
