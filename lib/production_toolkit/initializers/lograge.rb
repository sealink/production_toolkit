if defined?(Rails) && Rails.env.production?
  Rails.application.class.configure do
    config.lograge.enabled = true

    # Disable sprockets asset logging
    config.assets.logger = false if config.respond_to?(:assets)

    # Optionally add params hash, and timestamp
    config.lograge.custom_options = lambda do |event|
      params = event.payload[:params].reject do |k|
        ['controller', 'action'].include? k
      end
      { params: params }
    end
  end
end
