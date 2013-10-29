$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "cms"
  s.version     = Cms::VERSION
  s.authors     = ["Nick Herro"]
  s.email       = ["ncherro@gmail.com"]
  s.homepage    = "http://github.com/ncherro/cms"
  s.summary     = "Content Management System for Rails 4"
  s.description = "Provides a Content Management System for Rails 4 apps"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.0.0"

  s.add_dependency "ancestry", "~> 2.0.0"
  s.add_dependency "nested_form", "~> 0.3.2"
  s.add_dependency "simple_form", "~> 3.0.0"
  s.add_dependency "rack-cache"
  s.add_dependency "dragonfly", "~> 0.9.15"
  s.add_dependency "tinymce-rails", "~> 4.0"

  s.add_development_dependency "mysql2"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "quiet_assets"
end
