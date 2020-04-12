source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

gem 'rails', '~> 5.2.4', '>= 5.2.4.1'
gem 'pg'
gem 'thin'
gem 'bootsnap', '>= 1.1.0', require: false

gem 'faye'
gem 'faye-redis'

gem 'devise'
gem 'devise-jwt'
gem 'rack-cors'

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry-byebug'
  gem 'rspec-rails', '~> 3.5'
  gem 'shoulda-matchers'
  gem 'json_matchers'
  gem 'fabrication'
  gem 'ffaker'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop-rails', require: false
  gem 'rails_best_practices'
end
