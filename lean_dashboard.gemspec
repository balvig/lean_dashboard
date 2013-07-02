$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lean_dashboard/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lean_dashboard"
  s.version     = LeanDashboard::VERSION
  s.authors     = ["Jens Balvig"]
  s.email       = ["jens@balvig.com"]
  s.homepage    = "https://github.com/balvig/lean_dashboard"
  s.summary     = "Framework for tracking hypotheses/metrics in Lean Startup style MVPs"
  s.description = "Framework for tracking hypotheses/metrics in Lean Startup style MVPs"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", ">= 3.2.13"
  s.add_dependency "simple_form"
  s.add_dependency "bootstrap-sass"
  s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
