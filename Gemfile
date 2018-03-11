# A sample Gemfile
source "https://rubygems.org"

gem 'slack-ruby-bot'
gem 'puma'
gem 'sinatra'
gem 'dotenv'

group :development, :test, :docker do
  gem 'rake'
  gem 'foreman'
end

group :test do
  gem 'rspec'
  gem 'rack-test'
end

group :docker do
  gem 'faye-websocket'
end