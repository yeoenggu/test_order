source 'https://rubygems.org'
ruby '2.3.0'

gem 'i18n'
gem 'rake'
gem 'sinatra'
gem 'shopify-sinatra-app', '~> 0.3.3'
gem 'activerecord'
gem 'sinatra-activerecord'
gem 'sinatra-contrib'
gem 'rack-flash3', require: 'rack-flash'
gem 'addressable'
gem 'puma'
gem 'liquid'
gem "coffee-script"
gem "racksh"

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'pry'
  gem 'pry-byebug'
  gem 'better_errors'
  gem "binding_of_caller"
end

group :development do
  gem 'foreman'
  gem 'dotenv'
end

group :test do
  gem 'mocha', require: false
  gem 'minitest'
  gem 'rack-test'
  gem 'fakeweb'
end
