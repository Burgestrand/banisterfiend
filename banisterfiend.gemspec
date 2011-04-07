# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "banisterfiend/version"

Gem::Specification.new do |s|
  s.name        = "banisterfiend"
  s.authors     = ['Kim Burgestrand']
  s.email       = ['kim@burgestrand.se']
  s.homepage    = 'https://github.com/banister'
  s.summary     = 'Fiendishly sneaky; loves to pry!'
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ['lib']
  
  s.version     = Banisterfiend::VERSION
  s.platform    = Gem::Platform::RUBY
end
