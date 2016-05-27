Production Toolkit
==================

[![Build Status](https://travis-ci.org/sealink/production_toolkit.png?branch=master)](https://travis-ci.org/sealink/production_toolkit)
[![Coverage Status](https://coveralls.io/repos/sealink/production_toolkit/badge.png)](https://coveralls.io/r/sealink/production_toolkit)
[![Dependency Status](https://gemnasium.com/sealink/production_toolkit.png?travis)](https://gemnasium.com/sealink/production_toolkit)
[![Code Climate](https://codeclimate.com/github/sealink/production_toolkit.png)](https://codeclimate.com/github/sealink/production_toolkit)

# DESCRIPTION

Integrates with SeaLink's production requirements for quality projects

# INSTALLATION

gem install production_toolkit

or add to your Gemfile:
gem 'production_toolkit'

Also add the relevant dependencies of your project:

gem 'pansophy', '~> 0.3'
gem 'unicorn'
gem 'newrelic_rpm'
gem 'le'
gem 'rollbar', '~> 2.4.0'
gem 'lograge', '~> 0.3.6'
gem 'rollbar', '~> 2.9.0'

# SYNOPSIS

require 'production_toolkit'

For examples on most usage see the tests in the spec directory.
As these contain many basic examples with expected output.

## Log level

When using the 'le' gem, production_toolkit will set the log level to the one defined in the application's production.rb (for version >= 0.1.3).

    ```ruby
    config.log_level = :warn
    ```

If a log level is not defined by the app, the logger will default to 'info' level logging.
