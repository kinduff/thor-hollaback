lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'thor/hollaback/version'

Gem::Specification.new do |spec|
  spec.name          = 'thor-hollaback'
  spec.version       = Thor::Hollaback::VERSION
  spec.authors       = ['Localytics']
  spec.email         = ['oss@localytics.com']

  spec.summary       = 'Adds callbacks to thor commands'
  spec.homepage      = 'https://github.com/localytics/thor-hollaback'
  spec.license       = 'MIT'

  files              = `git ls-files -z`.split("\x0")
  spec.files         = files.reject { |f| f.match(%r{^test/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'hollaback', '~> 0.1.0'
  spec.add_dependency 'thor', '~> 0.20', '>= 0.19'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'minitest', '~> 5.10'
  spec.add_development_dependency 'rake', '~> 12.2'
  spec.add_development_dependency 'rubocop', '~> 0.51'
  spec.add_development_dependency 'simplecov', '~> 0.15'
end
