# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'artic/version'

Gem::Specification.new do |spec|
  spec.name          = 'artic'
  spec.version       = Artic::VERSION
  spec.authors       = ['Alessandro Desantis']
  spec.email         = ['desa.alessandro@gmail.com']

  spec.summary       = 'A Ruby gem for time computations.'
  spec.homepage      = 'https://github.com/alessandro1997/artic'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'tzinfo', '~> 1.2'
  spec.add_dependency 'tzinfo-data', '~> 1.2017'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'coveralls'
  spec.add_development_dependency 'fuubar'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'rubocop-rspec'
end
