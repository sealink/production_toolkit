if defined?(Rails)
  if Rails.env.production?
    require 'le'
    log_entries_key = Rails.application.secrets.log_entries_key
    le = Le.new(log_entries_key, ssl: true)
    Rails.logger = ActiveSupport::TaggedLogging.new(le)
  end
end
