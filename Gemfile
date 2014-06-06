ruby '2.0.0'
source 'https://rubygems.org'

gem 'rails', '4.0.2'

gem 'sass-rails', '~> 4.0.0'                             # Use SCSS for stylesheets
gem 'bootstrap-sass', '~> 3.0.3.0'                       # For UI toolkit
gem 'uglifier', '>= 1.3.0'                               # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0'                           # Use CoffeeScript for .js.coffee assets and views
gem 'jquery-rails'                                       # Use jquery as the JavaScript library
gem 'jquery-ui-rails'
gem 'jbuilder', '~> 1.2'                                 # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'oj'                                                 # Use faster JSON module
gem 'foreigner'                                          # For handling foreign keys in the DB
gem 'rest-client'                                        # For talking with Kanbanery API
gem 'pg'                                                 # For accessing PostgreSQL
gem 'haml', '>= 4.0.0'                                   # For cleaner templates' syntax
gem 'nokogiri'
gem 'pry-rails'
gem 'turbolinks'
gem "twitter-bootstrap-rails"
gem 'omniauth-facebook'
gem 'font-awesome-rails'
gem 'configatron', '~> 3.0.1'                            # For handling app configuration

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development do
  gem 'capistrano'                                       # For deployment
  gem 'capistrano-ext'                                   # For some handy capistrano extensions
  gem 'capistrano-unicorn'                               # For unicorn support in capistrano
  gem 'quiet_assets'                                     # To not spam console by GETs that are related to assets
  gem 'immigrant'                                        # To automatically generate foreign keys
end

group :production do
  gem 'unicorn'                                          # For super-fast webserver
  gem 'rails_12factor'                                   # For all features of Heroku
  gem 'rails_serve_static_assets'                        # For enabling serving assets by the app itself on Heroku
end
