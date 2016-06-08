if defined?(Rails)
  if Rails.env.production?
    require 'le'
    log_entries_key = Rails.application.secrets.log_entries_key
    log_level_symbol = Rails.application.config.log_level || :info
    log_level = Logger.const_get(log_level_symbol.to_s.upcase)
    Rails.logger = Le.new(log_entries_key, ssl: true, tag: true, log_level: log_level)
  end
end
