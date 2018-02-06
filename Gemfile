source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'rails-observers'

gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'

gem 'jsonb_accessor', '~> 1.0.0'

gem 'redis'
gem 'redis-rails'
gem 'sidekiq'

gem 'active_model_serializers'
gem 'will_paginate'

gem 'faker'

gem 'validate_url'

group :development, :test do
  gem 'brakeman', require: false
  gem 'byebug', platforms: %i(mri mingw x64_mingw)
  gem 'factory_bot_rails'
  gem 'fasterer'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'rubocop', require: false
  gem 'rubycritic', require: false
  gem 'simplecov', require: false
end

group :development do
  gem 'guard-rspec', require: false
  gem 'listen', '~> 3.1.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner'
  gem 'fakeweb', github: 'chrisk/fakeweb'
  gem 'shoulda-matchers', '~> 3.1'
end
