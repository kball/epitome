# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hemingway/version'

Gem::Specification.new do |spec|
  spec.name          = "hemingway"
  spec.version       = Hemingway::VERSION
  spec.authors       = ["McFreely"]
  spec.email         = ["paulmcfreely@gmail.com"]

  spec.summary       = %q{Hemingway makes your texts shorter.}
  spec.description   = %q{An implementation of the Lexrank Algorithm, which summarize corpus of text documents.}
  spec.homepage      = "https://github.com/McFreely/hemingway"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com' to prevent pushes to rubygems.org, or delete to allow pushes to any server."
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end