# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sassCore/version'

Gem::Specification.new do |spec|
  spec.name          = "sassCore"
  spec.version       = SassCore::VERSION
  spec.authors       = ["marvin"]
  spec.email         = ["xuyc_brother@foxmail.com"]
  spec.description   = %q{a sass library for FE}
  spec.summary       = %q{a sass library for FE}
  spec.homepage      = "https://github.com/marvin1023/sassCore"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # spec.add_development_dependency "bundler", "~> 1.3"
  # spec.add_development_dependency "rake"
  # spec.add_development_dependency "fakeweb"
end
