# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "hashids"
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Peter Hellberg"]
  s.date = "2013-05-13"
  s.description = "Use hashids when you do not want to expose your database ids to the user."
  s.email = ["peter@c7.se"]
  s.homepage = "https://github.com/peterhellberg/hashids.rb"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3")
  s.rubygems_version = "2.0.3"
  s.summary = "Generate YouTube-like hashes from one or many numbers."
end
