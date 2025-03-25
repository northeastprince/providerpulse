source "https://rubygems.org"

gem "tzinfo-data" # don't rely on OS for timezone data

gem "rails", github: "rails/rails", branch: "main"
gem "puma"

gem "sqlite3"

gem "propshaft"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"

gem "solid_cache"
gem "solid_queue"
gem "solid_cable"

gem "bootsnap", require: false

gem "kamal", require: false
gem "thruster", require: false

group :development, :test do
  gem "debug", require: "debug/prelude"

  # Code Critics
  gem "bundler-audit", require: false
  gem "brakeman", require: false

  gem "standard", require: false
  gem "standard-performance", require: false
  gem "standard-rails", require: false
  gem "erb_lint", require: false
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end
