require 'lograge'
class Railtie < Rails::Railtie
  config.before_initialize do
    require 'production_toolkit/initializers/lograge'
  end
end
