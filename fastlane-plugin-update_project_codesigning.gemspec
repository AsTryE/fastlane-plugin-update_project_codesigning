# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/update_project_codesigning/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-update_project_codesigning'
  spec.version       = Fastlane::UpdateProjectCodesigning::VERSION
  spec.version = "#{spec.version}-alpha-#{ENV['TRAVIS_BUILD_NUMBER']}" if ENV['TRAVIS']
  spec.author        = %q{Helmut Januschka}
  spec.email         = %q{helmut@januschka.com}

  spec.summary       = %q{Updates the Xcode 8 Automatic Codesigning Flag}
  spec.homepage      = "https://github.com/hjanuschka/fastlane-plugin-update_project_codesigning"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'xcodeproj'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 1.104.0'
end
