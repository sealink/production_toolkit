## Production Toolkit 0.3.2 ##

* [TT-6412] Ignore logging health checks
* [TT-6412] Add additional headers to be scrubed from rollbar

## Production Toolkit 0.3.1 ##

* [TT-6387] Fix initalisation error when sprockets is not installed

## Production Toolkit 0.3.0 ##

* [TT-6291] Filter additional headers / params from rollbar

## Production Toolkit 0.2.0 ##

* [TT-3794] Remove newrelic_rpm as the default performance_monitor

## Production Toolkit 0.1.6 ##

* Fix lograge railtie

## Production Toolkit 0.1.5 ##

* Fix require in 0.1.4
* Fix log level

## Production Toolkit 0.1.4 ##

* Fix typo in 0.1.3

## Production Toolkit 0.1.3 ##

* Ignore ActionController::RoutingError in rollbar
* Read the log_level from Rails or default to info
* Extract rollbar configuration so not rails dependent
