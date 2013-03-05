# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parade-liveruby/version'

Gem::Specification.new do |gem|
  gem.name          = "parade-liveruby"
  gem.version       = Parade::Liveruby::VERSION
  gem.authors       = ["Franklin Webber"]
  gem.email         = ["franklin.webber@gmail.com"]
  gem.description   = %q{Adds the ability to evaluate ruby code live within a Parade presentation}
  gem.summary       = %q{Adds the ability to evaluate ruby code live within a Parade presentation}
  gem.homepage      = "https://github.com/burtlo/parade-liveruby"
  gem.license       = "MIT"

  gem.add_dependency "parade", "~> 9.0.0"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
