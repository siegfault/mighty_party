source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

gem 'rails', github: 'rails/rails', branch: '6-1-stable'

gem 'httparty'
gem 'jbuilder'
gem 'pg'
gem 'pry', require: false
gem 'puma'
gem 'sass-rails'
gem 'turbolinks'
gem 'webpacker'

gem 'bootsnap', require: false

group :development, :test do
  gem 'rspec-rails'
  gem 'rubocop'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

group :development do
  gem 'annotate'
  gem 'web-console', github: 'rails/web-console'
  gem 'rack-mini-profiler'
  gem 'listen'
  gem 'spring'
end
