source "https://rubygems.org"
ruby "2.1.5"

gem "rails", "4.1.8"
gem "bcrypt-ruby"
gem "bootstrap-sass"
gem "sprockets"
gem "sass-rails", "~> 5.0.7"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.0.0"
gem "jquery-rails"
gem "turbolinks"
gem "jbuilder", "~> 2.0"
gem "faker"
gem "will_paginate"
gem "bootstrap-will_paginate"

group :production do
  gem "pg"
  gem "rails_12factor"
  gem "heroku_secrets", github: "alexpeattie/heroku_secrets"
end

group :development, :test do
  gem "sqlite3"
  gem "rspec-rails"
  gem "guard-rspec"
  gem "spring"
  gem "spring-commands-rspec"
  gem "guard-spring"
  gem "byebug"
  gem "pry-rails"
end

group :test do
  gem "selenium-webdriver"
  gem "capybara"
  gem "factory_girl_rails"
  gem "cucumber-rails", require: false
  gem "database_cleaner"
  gem "rspec-its"
end

group :doc do
  gem "sdoc"
end
