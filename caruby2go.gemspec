# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'caruby2go/version'

Gem::Specification.new do |spec|
  spec.name          = 'caruby2go'
  spec.version       = Caruby2go::VERSION
  spec.authors       = ['Eric Ebbesen']
  spec.email         = ['eebbesen.git@gmail.com']
  spec.summary       = 'Ruby gem that wraps the car2go API'
  spec.description   = 'Ruby gem that wraps the car2go API -- only supports the public API at present'
  spec.homepage      = 'https://github.com/eebbesen/caruby2go'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0'

  spec.add_dependency 'thor', '~> 0.19.1'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  # test
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'guard', '~> 2.12'
  spec.add_development_dependency 'guard-rspec', '~> 4.5'
  spec.add_development_dependency 'pry', '~>0.10'
  spec.add_development_dependency 'pry-remote', '~> 0.1'
  spec.add_development_dependency 'pry-nav', '~> 0.2'
  spec.add_development_dependency 'spy', '~> 0.4'
  spec.add_development_dependency 'byebug'
end
