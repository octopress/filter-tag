# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'octopress-filter-tag/version'

Gem::Specification.new do |spec|
  spec.name          = "octopress-filter-tag"
  spec.version       = Octopress::Tags::FilterTag::VERSION
  spec.authors       = ["Brandon Mathis"]
  spec.email         = ["brandon@imathis.com"]
  spec.summary       = %q{A Liquid block tag which can conditionally filter its content}
  spec.description   = %q{A Liquid block tag which can conditionally filter its content}
  spec.homepage      = "https://github.com/octopress/filter-tag"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "octopress-tag-helpers", "~> 1.0"
  spec.add_runtime_dependency "jekyll"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "clash"
end
