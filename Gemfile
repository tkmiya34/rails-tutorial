source 'https://rubygems.org'
ruby '2.1.5'

gem 'rails', '4.1.8'
gem 'bootstrap-sass'
gem 'sprockets'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

group :production do
  gem 'pg'
  gem 'rails_12factor'
  gem 'heroku_secrets', github: 'alexpeattie/heroku_secrets'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'guard-spring'
end

group :test do
  gem 'selenium-webdriver'
  gem 'capybara'
end

group :doc do
  gem 'sdoc'
end
