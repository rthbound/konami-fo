# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'konami/version'

Gem::Specification.new do |spec|
  spec.name          = "konami-fo"
  spec.version       = Konami::VERSION
  spec.authors       = ["Ryan T. Hosford"]
  spec.email         = ["tad.hosford@gmail.com"]
  spec.description   = %q{ Enter the Konami code and 'eff off. }
  spec.summary       = %q{ Enter the Konami code and 'eff off promptly. }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_runtime_dependency     "pay_dirt", "~> 1.0.7"
  spec.add_runtime_dependency     "konamio"
  spec.add_runtime_dependency     "foaas", '0.0.1'
  spec.add_development_dependency "rake"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "pry"
end
