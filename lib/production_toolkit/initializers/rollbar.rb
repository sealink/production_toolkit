require 'rollbar_configuator'

config = if defined?(Rails)
           Rails.application.secrets.rollbar
         end
if config
  configurator = RollbarConfigurator.new(config)
  configurator.configure
end

Rails.application.config.rollbar = configurator.rollbar_config if defined?(Rails)
