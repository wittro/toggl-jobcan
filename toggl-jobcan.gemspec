# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'toggl/jobcan/version'

Gem::Specification.new do |spec|
  spec.name          = 'toggl-jobcan'
  spec.version       = Toggl::Jobcan::VERSION
  spec.authors       = ['Tomoya Kabe']
  spec.email         = ['limit.usus@gmail.com']

  spec.summary       = 'Sync toggl worktime to JobCan.'
  spec.description   = 'Sync toggl worktime to JobCan.'
  spec.homepage      = 'https://github.com/limitusus/toggl-jobcan'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'selenium-webdriver'
  spec.add_dependency 'thor'
  spec.add_dependency 'toggl-worktime', '~> 0.3.0', '>= 0.3.2'
  spec.add_dependency 'webdrivers'
  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
