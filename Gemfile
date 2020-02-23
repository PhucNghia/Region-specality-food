source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.6", ">= 5.1.6.1"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"

gem "devise", "~> 4.1"
gem "bootstrap-sass", "3.3.7"
gem "jquery-rails"
gem "jquery-turbolinks"
gem "bootstrap-kaminari-views"
gem "font-awesome-sass"
gem "font-awesome-rails"
gem "faker"
gem "ffaker"
gem "activerecord-session_store"
# gem "redis-rails"
# gem "redis-store", "~> 1.4.0"
gem "simple_form"
gem "i18n-js"
gem "gon"
gem "config"
gem "carrierwave"
gem "mysql2", ">= 0.3.18", "< 0.5"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
  gem "rspec-rails", "~> 3.6"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"

  # deploy
  gem "capistrano"
  gem "capistrano3-puma"
  gem "capistrano-rails", require: false
  gem "capistrano-bundler", require: false
  gem "capistrano-rvm"
end

group :test do
  gem "shoulda-matchers", "~> 3.1"
  gem "database_cleaner"
  gem "factory_bot_rails"
end

group :production do
  # gem "pg"
end
# gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
