# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ipfs-http-client/version'

Gem::Specification.new do |spec|
  spec.name          = 'ipfs-http-client'
  spec.version       = Ipfs::VERSION
  spec.authors       = ['Pierpaolo Frasa', 'Jingyang']
  spec.email         = ['pfrasa@gmail.com', 'simple.continue@gmail.com']
  spec.license       = 'MIT'

  spec.summary       = 'IPFS HTTP client'
  spec.description   = 'Ruby HTTP client for the Interplanetary File System'
  spec.homepage      = 'https://ipfs.io'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'http', '~> 3.0'

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'sinatra'
end
