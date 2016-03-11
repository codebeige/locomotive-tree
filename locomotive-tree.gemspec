# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'locomotive/tree/version'

Gem::Specification.new do |spec|
  spec.name          = "locomotive-tree"
  spec.version       = Locomotive::Tree::VERSION
  spec.authors       = ["Tibor Claassen"]
  spec.email         = ["tibor@gmah.net"]

  spec.summary       = %q(Arrange content entries into a tree structure)
  spec.description   = %q(Configure a LocomotiveCMS content type to build up a
                          directed root tree graph. Provide easy traversal and
                          querying of the nested content entries.
                       ).gsub(/^\s*/, '')
  spec.homepage      = "https://github.com/codebeige/locomotive-tree"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
                         f.match(%r{^(test|spec|features)/})
                       end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "locomotivecms_steam", "~> 1.0.1"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
