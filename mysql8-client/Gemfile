source 'https://rubygems.org'

gem 'bootsnap', require: false
gem 'rails', '~> 5.2.0'

gem 'rails-html-sanitizer'

# Better logging
gem 'lograge'

gem 'sprockets'

gem 'responders' # See https://github.com/plataformatec/responders

# i18n
gem 'rails-i18n'

# kaminari must be before elasticsearch to work with es
gem 'kaminari'

# Pin to 0.4 for rails 4.x
# Change to 0.5.x upgrade to rails 5.x
gem 'mysql2', '~> 0.5.0'

gem 'jbuilder', '~> 2.0'

gem 'haml' # Until 5.0.3 has been released with https://github.com/haml/haml/pull/952 included
gem 'haml-rails'

gem 'autoprefixer-rails'
# gem 'bootstrap-sass', '~> 3.3'
gem 'bootstrap'

# To include the icon helper.
gem 'font-awesome-sass', '~> 5.8'
gem 'sassc-rails' #, '~> 5.0'

gem 'mini_magick'

# For unique id's on orders, carts etc, since integers can be easily found
gem 'mysql-binuuid-rails'

# CSP setup/reporting, (rails 5.2+ has this included)
# gem 'secure_headers'

# Asset precompilation
# Using webpacker for js
gem 'webpacker', '~> 5.0'

# Add if asset js is used instead of webpacker
# gem 'uglifier', '>= 1.3.0'
# uglifier requirement
# gem 'execjs'
# gem 'mini_racer'
# gem 'therubyracer' # , group: [:development] # execjs/uglifier requirement

# Error Tracking
# gem 'sentry-raven'
gem 'rollbar'

group :staging, :production do
  # Profiler
  # Note: Cannot use skylight in production, as it cannot filter out kubernetes alive checks
  # gem 'skylight'

  # Use to passenger for serving static assets
  # For using puma in production, the rails deployment package must include
  # a 'sidekart nginx' to serve static assets, or you must include
  gem 'passenger', require: 'phusion_passenger/rack_handler'
end

# gem 'delayed_job'
# gem 'delayed_job_active_record'

gem 'sidekiq', '< 7.0'
gem 'sidekiq_alive'

# Forms
gem 'simple_form', '~> 5.0'
gem 'country_select' # rubocop:disable Bundler/OrderedGems - countries must be after country_select
gem 'countries' # rubocop:disable Bundler/OrderedGems

gem 'cancancan'

# Authentication
gem 'devise'
gem 'devise-i18n'

# For accessing google apis (YouTube etc)
# Depracted: use specific api libraries instead
# gem 'google-api-client'

# For simple search, ransack can be used
# gem 'ransack'

group :development, :test do
  gem 'rspec-rails', '~> 4.0' # , group: [:development, :test]
  gem 'rspec-retry'
  gem 'faker'
  gem 'puma'
  # gem 'thin'
  gem 'factory_bot_rails' # , require: false # , group: [:test]
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'

  gem 'capybara-screenshot'

  gem 'timecop'

  gem 'capybara-selenium'

  # For testing on selenium against ff, chrome, edge and ie
  gem 'webdrivers'

  gem 'rails-controller-testing'

  # Alternative: change to https://github.com/elgalu/docker-selenium
  # For using real chrome/ff browsers through selenium

  # Coverage
  # gem 'simplecov', require: false
  # gem 'simplecov-rcov', require: false

  # Notificiations sent to growl through gntp
  gem 'ruby_gntp'
end

# For validating email addresses
gem 'valid_email2'

# Connection pooling for dalli/puma, when running multi threaded:
# See https://github.com/petergoldstein/dalli#multithreading-and-rails
gem 'connection_pool'

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'

  gem 'i18n-tasks' # To check for missing/unused translations

  # Note, remove binding_of_caller and/or better_errors if debugging is slow
  # See https://github.com/charliesome/better_errors/issues/341
  gem 'better_errors'
  gem 'binding_of_caller'

  gem 'nokogiri' # Needed for data-import.
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # For reloading during devel
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false

  gem 'thor'

  # Annotate all the models :)
  gem 'annotate', require: false

  # Allow mailer_preview to have access to params
  # gem 'mailer_preview_request_model'

  # Better ruby/rails console
  gem 'pry-rails'
  gem 'pry-toys'
  gem 'pry-byebug'
end
