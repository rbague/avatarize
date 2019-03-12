# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'avatarize/version'

Gem::Specification.new do |spec|
  spec.name          = 'avatarize'
  spec.version       = Avatarize::VERSION
  spec.homepage      = 'https://github.com/rbague/avatarize'
  spec.license       = 'MIT'
  spec.summary       = %(Create nice avatars from your user's initial)

  spec.author        = 'Roger Bagué'
  spec.email         = 'rogerbague@gmail.com'

  spec.files         = Dir['{app,lib}/**/*', 'README.md', 'LICENSE']
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
