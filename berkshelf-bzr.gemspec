# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'berkshelf/bzr/version'

Gem::Specification.new do |spec|
  spec.name          = 'berkshelf-bzr'
  spec.version       = Berkshelf::Bzr::VERSION
  spec.authors       = [ 'David Chauviere' ]
  spec.email         = [ 'd_chauviere@yahoo.fr' ]
  spec.summary       = 'Bazaar support for Berkshelf'
  spec.description   = 'A Berkshelf plugin that adds support for downloading ' \
                       'Chef cookbooks from Bazaar locations.'
  spec.homepage      = 'https://github.com/berkshelf/berkshelf-bzr'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Runtime dependencies
  spec.add_dependency 'berkshelf', '~> 3.1'

  # Development dependencies
  spec.add_development_dependency 'aruba', '~> 0.5'
  spec.add_development_dependency 'rspec', '~> 2.14'

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake', '~> 0.9'
end
