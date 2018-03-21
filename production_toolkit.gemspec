# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'production_toolkit/version'

Gem::Specification.new do |spec|
  spec.name          = "production_toolkit"
  spec.version       = ProductionToolkit::VERSION
  spec.authors       = ["Michael Noack"]
  spec.email         = ["support@travellink.com.au"]
  spec.description   = %q{Integrate production gems for high quality projects.}
  spec.summary       = %q{Integrate production gems for high quality projects.}
  spec.homepage      = 'http://github.com/sealink/production_toolkit'

  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rollbar', '~> 2.4'
  spec.add_development_dependency 'unicorn', '~> 4.8'
  spec.add_development_dependency 'pansophy', '~> 0.5'
  spec.add_development_dependency 'le', '~> 2.6'
  spec.add_development_dependency 'lograge', '~> 0.3.6'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-its'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'simplecov-rcov'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'travis'
  spec.add_development_dependency 'pry-byebug'
end
