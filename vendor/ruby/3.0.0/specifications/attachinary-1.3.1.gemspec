# -*- encoding: utf-8 -*-
# stub: attachinary 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "attachinary".freeze
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Milovan Zogovic".freeze]
  s.date = "2015-10-04"
  s.description = "Attachments handler for Rails that uses Cloudinary for storage.".freeze
  s.email = ["milovan.zogovic@gmail.com".freeze]
  s.homepage = "".freeze
  s.rubygems_version = "3.2.3".freeze
  s.summary = "attachinary-1.3.1".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 3.2"])
    s.add_runtime_dependency(%q<cloudinary>.freeze, ["~> 1.1.0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<valid_attribute>.freeze, [">= 0"])
    s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_development_dependency(%q<capybara-webkit>.freeze, [">= 0"])
    s.add_development_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<launchy>.freeze, [">= 0"])
    s.add_development_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_development_dependency(%q<rb-fsevent>.freeze, ["~> 0.9.1"])
    s.add_development_dependency(%q<guard-rspec>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.2"])
    s.add_dependency(%q<cloudinary>.freeze, ["~> 1.1.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<valid_attribute>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<capybara-webkit>.freeze, [">= 0"])
    s.add_dependency(%q<factory_girl_rails>.freeze, [">= 0"])
    s.add_dependency(%q<launchy>.freeze, [">= 0"])
    s.add_dependency(%q<database_cleaner>.freeze, [">= 0"])
    s.add_dependency(%q<rb-fsevent>.freeze, ["~> 0.9.1"])
    s.add_dependency(%q<guard-rspec>.freeze, [">= 0"])
  end
end
