# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'berkflow/version'

Gem::Specification.new do |spec|
  spec.name          = "berkflow"
  spec.version       = Berkflow::VERSION
  spec.authors       = ["Jamie Winsor"]
  spec.email         = ["jamie@vialstudios.com"]
  spec.summary       = %q{A Cookbook-Centric Deployment workflow tool}
  spec.description   = %q{A CLI for managing Chef Environments using Berkshelf and the Environment Cookbook Pattern.}
  spec.homepage      = "https://github.com/reset/berkflow"
  spec.license       = "Apache 2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "solve"
  spec.add_dependency "berkshelf", "~> 3.0.0.beta8"
  spec.add_dependency "ridley", "~> 3.0.0.rc1"
  spec.add_dependency "ridley-connectors", "~> 1.7.0"
  spec.add_dependency "thor", "~> 0.18"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
