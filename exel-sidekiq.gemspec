# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'exel/sidekiq/version'

Gem::Specification.new do |spec|
  spec.name          = 'exel-sidekiq'
  spec.version       = EXEL::Sidekiq::VERSION
  spec.authors       = ['yroo']
  spec.email         = ['dev@yroo.com']
  spec.summary       = 'Async provider for EXEL using Sidekiq'
  spec.description   = 'When used with EXEL (https://github.com/47colborne/exel), the async command will launch a '\
                       'Sidekiq worker'
  spec.homepage      = 'https://github.com/47colborne/exel-sidekiq'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'exel', '~> 1'
  spec.add_dependency 'sidekiq', '< 6'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'guard', '~> 2'
  spec.add_development_dependency 'guard-rspec', '~> 4'
  spec.add_development_dependency 'guard-rubocop', '~> 1'
  spec.add_development_dependency 'terminal-notifier', '~> 1'
  spec.add_development_dependency 'terminal-notifier-guard', '~> 1'
  spec.add_development_dependency 'rubocop', '~> 0'
  spec.add_development_dependency 'rubocop-rspec-focused', '~> 0'
end
