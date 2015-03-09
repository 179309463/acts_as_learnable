lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'acts_as_learnable/version'

Gem::Specification.new do |spec|
  spec.name          = 'acts_as_learnable'
  spec.version       = ActsAsLearnable::VERSION
  spec.authors       = ['Danya Kim']
  spec.email         = ["itsdanya@gmail.com"]
  spec.summary       = 'Summary'
  spec.description   = 'Description'
  spec.homepage      = 'http://github.com/itsdan/acts_as_learnable'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'activerecord'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'bundler', "~> 1.7"
  spec.add_development_dependency 'rake', "~> 10.0"
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'byebug'
end
