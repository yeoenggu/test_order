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
gem "default_value_for", "~> 3.0.0"
gem 'pry'
gem 'pry-stack_explorer'
# gem 'rack-traffic-logger'
gem 'httplog'
gem 'haml'
gem 'padrino'
gem 'foreman'
gem 'redis', '~>3.2'
gem 'redis-namespace'

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  
  gem 'pry-byebug'
  gem 'better_errors'
  gem "binding_of_caller"
end

group :development do
  gem 'dotenv'
end

group :test do
  gem 'mocha', require: false
  gem 'minitest'
  gem 'rack-test'
  gem 'fakeweb'
end
