# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'id_pagination/version'

Gem::Specification.new do |spec|
  spec.name          = 'id_pagination'
  spec.version       = IdPagination::VERSION
  spec.authors       = ['Mitchell Henke']
  spec.email         = ['mitchh23@gmail.com']
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  s.add_runtime_dependency 'sequel', '~> 4.0'
  spec.add_development_dependency 'bundler', '~> 1.7'
end
