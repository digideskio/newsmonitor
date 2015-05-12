require './lib/news_monitor/version'

Gem::Specification.new do |spec|
  spec.name          = 'newsmonitor'
  spec.version       = NewsMonitor::VERSION
  spec.authors       = ['Rainer Borene']
  spec.email         = ['rainerborene@gmail.com']
  spec.summary       = %q{NewsMonitor API wrapper}
  spec.description   = spec.summary
  spec.homepage      = 'https://github.com/rainerborene/newsmonitor'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty'
  spec.add_dependency 'nibbler'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pry'
end
