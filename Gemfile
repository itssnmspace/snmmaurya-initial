source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
gem 'pg'
gem 'mysql2'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'rspec-rails'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'rails-controller-testing'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'sunspot_solr' # optional pre-packaged Solr distribution for use in development
  gem 'pry'
end

gem 'config'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]


gem 'cancan'
gem 'devise'
#Social sharing
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-amazon'
gem 'omniauth-google'
gem 'omniauth-github'
gem 'omniauth-facebook'
gem 'omniauth-linkedin'

#Solr Search
gem 'sunspot_rails'
gem 'progress_bar'

#Seo Setting gems
gem 'metamagic'
gem 'friendly_id', '~> 5.1.0'


gem "paperclip", "~> 5.0.0"
gem 'aws-sdk'

#Active Admin for rails 5
gem 'activeadmin', '~> 1.0.0.pre4'
gem 'inherited_resources', github: 'activeadmin/inherited_resources'
gem 'ransack',             github: 'activerecord-hackery/ransack'
gem 'draper',              '> 3.x'
gem 'kaminari'
gem 'active_admin_datetimepicker'
gem 'active_admin_editor', github: 'ejholmes/active_admin_editor'


# Heroku Deployment
gem 'rails_12factor', group: :production


gem "sidekiq"
gem 'sinatra', github: 'sinatra', require: false 
gem 'rack-protection', github: 'sinatra/rack-protection', require: false

group :development do
  gem 'capistrano',         require: false
  gem "net-ssh"
  gem 'capistrano-rvm',     require: false
  gem 'capistrano-rails',   require: false
  gem 'capistrano-bundler', require: false
  gem 'capistrano3-puma',   require: false
end

# # gem 'capistrano'
# # gem 'capistrano-rvm'
# # gem 'capistrano-bundler'
# # gem 'capistrano-rails'

# gem 'capistrano'
# gem 'capistrano-ext'
# gem 'capistrano-bundler'
# gem 'capistrano-rails'
# # Add this if you're using rbenv
# gem 'capistrano-rbenv'
# # Add this if you're using rvm
# gem 'capistrano-rvm'