# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "view_finder/version"

Gem::Specification.new do |s|
  s.name        = "view_finder"
  s.version     = ViewFinder::VERSION
  s.authors     = ["Sairam Kunala"]
  s.email       = ["sairam.kunala@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Open view partials from a live rails site into your favorite text editor}
  s.description = %q{Open view partials from a live rails site into your favorite text editor}

  s.rubyforge_project = "view_finder"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency 'gem_name'
  s.add_runtime_dependency 'coffee-rails'
end
