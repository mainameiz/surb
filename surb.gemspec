# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "surb/version"

Gem::Specification.new do |s|
  s.name = 'surb'
  s.version = Surb::VERSION
  s.summary = 'Set of useful scripts for rails application development'
  s.description = ''
  s.homepage = 'https://github.com/mainameiz/surb'
  s.authors = ["Nikolay Markov"]
  s.email   = ["mainameiz@gmail.com"]
  s.files = `git ls-files`.split("\n")

  s.add_dependency('haml', '~> 3.1.4')
  s.add_dependency('hpricot', '~> 0.8.6')
  s.add_dependency('ruby_parser', '~> 2.3.1')
end
