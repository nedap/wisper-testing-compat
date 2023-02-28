# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wisper/testing/version'

Gem::Specification.new do |spec|
  spec.name          = "wisper-testing-compat"
  spec.version       = Wisper::Testing::VERSION
  spec.authors       = ["Kris Leech", "Jamie Schembri"]
  spec.email         = ["kris.leech@gmail.com", "jamie.schembri@nedap.com"]

  spec.summary       = "Helpers for testing Wisper-Compat publisher/subscribers."
  spec.homepage      = "https://github.com/nedap/wisper-testing"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'wisper-compat'
end
