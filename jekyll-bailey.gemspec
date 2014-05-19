# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "jekyll-bailey"
  spec.version       = "0.0.1"
  spec.authors       = ["Rolf Erik Lekang"]
  spec.email         = ["me@rolflekang.com"]
  spec.summary       = %q{A Bailey.js converter for Jekyll.}
  spec.homepage      = "https://github.com/relekang/jekyll-bailey"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "jekyll", "~> 2.0"
  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
