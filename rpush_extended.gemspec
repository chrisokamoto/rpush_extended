# -*- encoding: utf-8 -*-
$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "rpush/version"

Gem::Specification.new do |s|
  s.name        = "rpush_extended"
  s.version     = Rpush::VERSION
  s.authors     = ["Ian Leitch", 'Chris Okamoto']
  s.email       = ['christiane.okamoto@gmail.com']
  s.homepage    = "https://github.com/chrisokamoto/rpush_extended"
  s.summary     = 'The push notification service for Ruby.'
  s.description = 'The push notification service for Ruby.'
  s.license     = 'MIT'

  s.files         = `git ls-files -- lib README.md CHANGELOG.md LICENSE`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}`.split("\n")
  s.executables   = `git ls-files -- bin`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = '>= 2.2.2'

  s.add_runtime_dependency 'multi_json', '~> 1.0'
  s.add_runtime_dependency 'net-http-persistent'
  s.add_runtime_dependency 'net-http2', '~> 0.14'
  s.add_runtime_dependency 'jwt', '>= 1.5.6'
  s.add_runtime_dependency 'activesupport'
  s.add_runtime_dependency 'thor', ['>= 0.18.1', '< 2.0']
  s.add_runtime_dependency 'railties'
  s.add_runtime_dependency 'ansi'

  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec', '~> 3.4.0'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'timecop'
  s.add_development_dependency 'stackprof'
  s.add_development_dependency 'modis', '~> 2.0'
  s.add_development_dependency 'rpush-redis', '~> 1.0'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency 'cane'
  s.add_development_dependency 'codeclimate-test-reporter'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'byebug'

  s.add_development_dependency 'pg'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'sqlite3'
end
