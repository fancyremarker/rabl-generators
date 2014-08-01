# -*- encoding: utf-8 -*-
require File.expand_path("../lib/rabl/generators/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "rabl-generators"
  s.version     = Rabl::Generators::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Frank Macreery"]
  s.email       = ["frank@macreery.com"]
  s.homepage    = "http://github.com/fancyremarker/rabl-generators"
  s.summary     = "Rabl generators for Rails resources"
  s.description = "Rabl generators for Rails resources"
  s.licenses    = ["MIT"]

  s.required_rubygems_version = ">= 1.3.6"

  s.add_dependency "rabl",          [">= 0.8"]
  s.add_dependency "activesupport", [">= 3.1"]
  s.add_dependency "actionpack",    [">= 3.1"]
  s.add_dependency "railties",      [">= 3.1"]

  s.add_development_dependency "rails",   [">= 3.1"]
  s.add_development_dependency "bundler", "~> 1.2"
  s.add_development_dependency "rake"
  s.add_development_dependency 'appraisal', '>= 0.3.8'

  s.files        = `git ls-files`.split("\n")
  s.executables  = `git ls-files`.split("\n").select{|f| f =~ /^bin/}
  s.require_path = 'lib'
end
