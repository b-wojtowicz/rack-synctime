# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/synctime/version'

Gem::Specification.new do |gem|
  gem.name          = "rack-synctime"
  gem.version       = Rack::Synctime::VERSION
  gem.authors       = ["Bartlomiej Wojtowicz"]
  gem.email         = ["wojtowicz.bartlomiej@gmail.com"]
  gem.homepage      = "https://github.com/b-wojtowicz/rack-synctime"
  gem.summary       = %q{A simple Rack middleware that returns sync time in HTTP headers}
  gem.description   = %q{Rack::Synctime is a simple Rack middleware that returns sync time (time when request started) in HTTP headers (#{Rack::Synctime::DEFAULT_HEADER_NAME} by default). Header name can be changed also sync time can be modified using time offset i.e. -5 seconds (server time in seconds decreased by 5) etc. This can be useful if you develop mobile applications (Android, iOS, ...) and you need information when request started in response header.}

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]


  gem.required_rubygems_version = ">= 1.3.6"

  gem.add_dependency "bundler", ">= 1.0"
  gem.add_dependency "rack", ">= 1.2.0"

  gem.add_development_dependency "bundler", ">= 1.0"
  gem.add_development_dependency "rack", ">= 1.2.0"

end
