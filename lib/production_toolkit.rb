require 'production_toolkit/railtie' if defined?(Rails)

TOOL_DEFAULTS = {
  config_fetcher:      'pansophy',
  error_reporting:     'rollbar',
  performance_monitor: 'newrelic_rpm',
  server:              'unicorn',
  log_format:          'production_toolkit/lograge'
}

TOOL_DEFAULTS.each_pair do |tool_name, default|
  tool = ENV.fetch(tool_name.to_s.upcase, default)
  require tool unless tool == 'off'
end
