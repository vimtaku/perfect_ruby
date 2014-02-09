# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "virb"
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Daniel Choi"]
  s.date = "2013-11-14"
  s.description = "A Vim shell for irb and rails console"
  s.email = ["dhchoi@gmail.com"]
  s.executables = ["virb", "virb-pry"]
  s.files = ["bin/virb", "bin/virb-pry"]
  s.homepage = "http://danielchoi.com/software/virb.html"
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.0")
  s.rubyforge_project = "virb"
  s.rubygems_version = "2.0.14"
  s.summary = "A Vim shell for irb and rails console"
end
