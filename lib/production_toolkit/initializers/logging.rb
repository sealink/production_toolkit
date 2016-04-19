if defined?(Rails)
  if Rails.env.production?
    require 'le'
    log_entries_key = Rails.application.secrets.log_entries_key
    Rails.logger = Le.new(log_entries_key, ssl: true, tag: true)
  end
end
