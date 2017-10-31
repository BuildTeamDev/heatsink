# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heatsink/version'

Gem::Specification.new do |spec|
  spec.name = 'heatsink'
  spec.version = Heatsink::VERSION
  spec.authors = ['reggaemuffin', 'Johnny Saint']
  spec.email = %w(reggaemuffin@buildteam.io rockandrollisdead@mailfence.com)

  spec.summary = %q{Wrapper for a STEEM RPC Ruby Client}
  spec.description = %q{Wrapper for client access to the STEEM blockchain. To avoid radiator burns.}
  spec.homepage = 'https://github.com/BuildTeamDev/heatsink'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'mocha'
end
