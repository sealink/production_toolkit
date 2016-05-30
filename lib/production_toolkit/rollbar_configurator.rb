require 'facets/hash/symbolize_keys'

class RollbarConfig
  attr_reader :server_token, :client_token, :environment

  def initialize(config)
    @enabled = config.fetch(:enabled, false)
    if enabled?
      @server_token = config.fetch(:server_token)
      @client_token = config[:client_token]
      @environment  = config.fetch(:environment)
    end
  end

  def enabled?
    @enabled
  end
end

class RollbarConfigurator
  ERROR_MESSAGE = 'rollbar not defined in secrets.yml'

  def initialize(configuration)
    @configuration = configuration
  end

  def configure
    notify_missing_configuration! unless @configuration.present?
    configure_rollbar
  end

  def rollbar_config
    @rollbar_config ||= RollbarConfig.new(@configuration.symbolize_keys)
  end

  private

  def configure_rollbar
    puts "configure rollbar"
    return unless rollbar_config.enabled?

    require 'rollbar'

    puts "configuratin with #{rollbar_config.server_token} - #{rollbar_config.environment}"
    ::Rollbar.configure do |config|
      config.enabled      = true
      config.access_token = rollbar_config.server_token
      config.environment  = rollbar_config.environment
    end
  end

  def notify_missing_configuration!
    fail ERROR_MESSAGE
  end
end
