module ProductionToolkit
  class Railtie < Rails::Railtie
    config.before_initialize do
      require 'production_toolkit/initializers/rollbar'
    end
  end
end
