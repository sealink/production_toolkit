if defined?(Rails)
  if Rails.env.production?
    require 'lograge'
    Rails.application.class.configure do
      config.lograge.enabled = true


      # Optionally add params hash, and timestamp
      config.lograge.custom_options = lambda do |event|
        params = event.payload[:params].reject do |k|
          ['controller', 'action'].include? k
        end

        {params: params}
      end
    end
  end
end
