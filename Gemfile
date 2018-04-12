source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'simple_form', '~> 3.5'
gem 'slim', '~> 3.0', '>= 3.0.9'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'select2-rails', '~> 4.0', '>= 4.0.3'
gem 'bootstrap-datepicker-rails', '~> 1.7', '>= 1.7.1.1'
gem 'will_paginate', '~> 3.1.0'
gem 'will_paginate-bootstrap', '~> 1.0', '>= 1.0.1'
gem 'enumerize', '~> 2.1', '>= 2.1.2'
gem 'gretel', '~> 3.0', '>= 3.0.9'
gem 'rails-bootstrap-tabs', '~> 0.2.0'
gem 'normalize-rails', '~> 4.1', '>= 4.1.1'
gem 'bootstrap_sb_admin_base_v2'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.3'
gem 'devise', '~> 4.4'
gem 'stateful_enum', '~> 0.4.0'
gem 'underscore-rails', '~> 1.8', '>= 1.8.3'
gem 'dependent-fields-rails', '~> 0.4.2'
gem 'carrierwave', '~> 1.2', '>= 1.2.2'
gem 'auto_increment', '~> 1.5'
gem 'rolify', '~> 5.2'

group :development do
  gem 'capistrano', '~> 3.7', '>= 3.7.1'
  gem 'capistrano-rails', '~> 1.2'
  gem 'capistrano-passenger', '~> 0.2.0'
  gem 'capistrano-rake', '~> 0.1.0'

  gem 'capistrano-rbenv', '~> 2.1'
end

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
