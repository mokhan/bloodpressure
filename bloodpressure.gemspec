$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bloodpressure/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bloodpressure"
  s.version     = Bloodpressure::VERSION
  s.authors     = ["mo khan"]
  s.email       = ["mo@mokhan.ca"]
  s.homepage    = "http://www.mokhan.ca"
  s.summary     = "Summary of Bloodpressure."
  s.description = "Description of Bloodpressure."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.1"

  s.add_development_dependency "sqlite3"
end
