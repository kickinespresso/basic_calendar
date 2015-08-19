$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "basic_calendar/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "basic_calendar"
  s.version     = BasicCalendar::VERSION
  s.authors     = ["Chris Desch"]
  s.email       = ["cdesch@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of BasicCalendar."
  s.description = "TODO: Description of BasicCalendar."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.3"
  s.add_dependency "simple_form", ">= 3.0"
  s.add_dependency 'bootstrap-sass', '~> 3.3.4'
  s.add_dependency 'sass-rails', '~> 5.0'
  s.add_dependency "jquery-rails", "~> 4.0.4"
  s.add_dependency "jquery-ui-rails", "~> 5.0.5"
  s.add_dependency 'ckeditor','~> 4.1.3'
  s.add_dependency "kaminari", ">= 0.15"
  s.add_dependency  'recurring_select', '~> 1.3.1'
  s.add_dependency  "simple_calendar", "~> 1.1.0"

  #IceCube
  #FullCalendar
  #RecurringSelect

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency "capybara"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "pry-nav"
  s.add_development_dependency "pry-stack_explorer"
  s.add_development_dependency "better_errors"




end
