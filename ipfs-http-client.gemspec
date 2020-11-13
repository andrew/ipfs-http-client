# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ipfs-http-client/version'

Gem::Specification.new do |spec|
  spec.name          = 'ipfs-http-client'
  spec.version       = Ipfs::VERSION
  spec.authors       = ['Jingyang Liang', 'Pierpaolo Frasa']
  spec.email         = ['simple.continue@gmail.com', 'pfrasa@gmail.com']
  spec.license       = 'MIT'

  spec.summary       = 'IPFS HTTP client'
  spec.description   = 'Ruby HTTP client for the Interplanetary File System'
  spec.homepage      = 'https://github.com/andrew/ipfs-http-client'

  spec.files         = Dir['README.md', 'lib/**/*']
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.7'

  spec.add_dependency 'http', '~> 4.4'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'byebug', '~> 11'
  spec.add_development_dependency 'rspec', '~> 3'
  spec.add_development_dependency 'webmock', '~> 3'
  spec.add_development_dependency 'sinatra', '~> 2'
end
