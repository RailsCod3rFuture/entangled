# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'entangled/version'

Gem::Specification.new do |s|
  s.required_ruby_version = '>= 2.3.0'

  s.name          = "entangled"
  s.version       = Entangled::VERSION
  s.authors       = ["Dennis Charles Hackethal"]
  s.email         = ["dennis.hackethal@gmail.com"]
  s.summary       = %q{Non-blocking real time behavior for Rails}
  s.description   = %q{Non-blocking real time behavior for Rails}
  s.homepage      = "https://github.com/dchacke/entangled"
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = `git ls-files -z spec`.split("\x0")
  s.require_paths = ["lib"]

  s.add_development_dependency 'bundler', '~> 1.10'
  s.add_development_dependency 'rake', '~> 12.0'
  s.add_development_dependency 'rspec-rails', '~> 3.7'
  s.add_development_dependency 'shoulda-matchers', '~> 3.1'
  s.add_development_dependency 'sqlite3', '~> 1.3'
  s.add_development_dependency 'byebug', '~> 9.1'
  s.add_development_dependency 'bourne', '~> 1.6'
  s.add_development_dependency 'puma', '~> 3.11.4'
  s.add_dependency 'rails', '~> 4.2'

  # To handle channels
  s.add_dependency 'redis', '~> 4.0'

  # To handle websockets
  s.add_dependency 'tubesock', '~> 0.2.6'

  # To convert hashes from snake case to camel case
  s.add_dependency 'awrence', '~> 0.2'

  # To convert hashes from camel case to snake case
  s.add_dependency 'plissken', '~> 1.1.0'
end
