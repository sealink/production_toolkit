require 'rollbar_configurator'

if defined?(Rails)
  config = Rails.application.secrets.rollbar

  if config
    configurator = RollbarConfigurator.new(config)
    configurator.configure

    Rails.application.config.rollbar = configurator.rollbar_config
  end
end
