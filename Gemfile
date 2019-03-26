source 'https://rubygems.org'

gem 'bootsnap', require: false
gem 'rails', '~> 5.2.0'

# Better logging
gem "lograge"

gem 'sprockets'
gem 'sprockets-es6', require: 'sprockets/es6'

gem 'responders' # See https://github.com/plataformatec/responders

gem 'turbolinks'

# Add after upgrade to rails5
gem 'rails-i18n'

# Might not be needed
# gem 'quiet_assets'

# kaminair must be before elasticsearch to work with es
gem 'kaminari'

gem 'elasticsearch', '~> 6.0' # Upgrade to 5.x (Can do 6.x as soon as elasticsearch-rails is 6.x compatible)
gem 'elasticsearch-rails', '~> 6.0' # 5.x should be compatible with 6.x
gem 'elasticsearch-model', '~> 6.0' # 5.x should be compatible with 6.x # rubocop:disable Bundler/OrderedGems
gem 'elasticsearch-dsl' # rubocop:disable Bundler/OrderedGems

# Nice progressbar to use in rake tasks
gem 'ruby-progressbar', require: false

# Pin to 0.4 for rails 4.x
# Change to 0.5.x upgrade to rails 5.x
gem 'mysql2', '~> 0.5.0'

gem 'jbuilder', '~> 2.0'

gem 'haml' # Until 5.0.3 has been released with https://github.com/haml/haml/pull/952 included
gem 'haml-rails'

# gem 'bcrypt', '~> 3.1.7'

gem 'jquery-rails'
gem 'jquery-ui-rails'

gem 'jquery.fileupload-rails'

gem 'autoprefixer-rails'
gem 'bootstrap-sass', '~> 3.3'
# gem 'font-awesome-sass', '~> 4.3'
gem 'sassc-rails' #, '~> 5.0'

gem 'mini_magick'

gem 'fog-rackspace'
# gem 'refile', require: 'refile/rails'
gem 'leifcr-refile', require: 'refile/rails' # Use leifcr-refile until new version is released
# gem 'refile-mini_magick'
gem 'leifcr-refile-fog'
gem 'leifcr-refile-mini_magick', require: 'refile/mini_magick'

# gem 'paperclip'
# gem 'paperclip-optimizer', '~> 2.0.0'
# gem 'image_optim', '~> 0.20'
# gem 'image_optim_pack'
# gem 'delayed_paperclip'

gem 'carrierwave'

gem 'interactor-rails', '~> 2.0'

# For CC payments using checkout.js
gem 'stripe'

# For sending public stripe token to js from secrets.yml
gem 'gon'

# For states: https://github.com/gocardless/statesman
gem 'statesman'

# For unique id's on orders, carts etc, since integers can be easily found
# gem 'activeuuid'
# gem 'leifcr-activeuuid', require: 'activeuuid'
# Use this instead for uuid
gem 'mysql-binuuid-rails'
# gem 'uuidtools'

# CSP setup/reporting
gem 'secure_headers'

# Asset precompilation
# Can be removed if webpack is used instead
gem 'uglifier', '>= 1.3.0'
# uglifier requirement
gem 'execjs'
gem 'mini_racer'
# gem 'therubyracer' # , group: [:development] # execjs/uglifier requirement

# Error Tracking
gem 'sentry-raven'

group :staging, :production do
  # Profiler
  gem 'skylight'
end

# Use puma as the web server
gem 'puma'

# gem 'delayed_job'
# gem 'delayed_job_active_record'

gem 'sidekiq'
gem 'sidekiq_alive'

# Forms
gem 'simple_form', '~> 4.0'
gem 'country_select' # rubocop:disable Bundler/OrderedGems - countries must be after country_select
gem 'countries' # rubocop:disable Bundler/OrderedGems

# Authentication
gem 'devise'
gem 'devise-i18n'

gem 'omniauth'
gem 'omniauth-facebook'
gem 'omniauth-github'
gem 'omniauth-google-oauth2'
gem 'omniauth-linkedin-oauth2'

# For accessing google apis (YouTube etc)
gem 'google-api-client'

# Authorization
gem 'pundit'

# For simple search, ransack can be used
# gem 'ransack'

# For sitemaps
gem 'sitemap_generator'

group :development, :test do
  gem 'rspec-rails', '~> 3.8' # , group: [:development, :test]
  gem 'rspec-retry'
  # gem 'rspec-collection_matchers'
  gem 'faker'
  # gem 'thin'
  gem 'factory_bot_rails' # , require: false # , group: [:test]
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'

  gem 'capybara-screenshot'

  # gem 'shoulda-matchers'
  gem 'timecop'

  gem 'capybara-selenium'

  # For testing on selenium against ff, chrome, edge and ie
  gem 'webdrivers'

  gem 'rails-controller-testing'

  # Alternative: change to https://github.com/elgalu/docker-selenium
  # For using real chrome/ff browsers through sxelenium

  # Coverage
  # gem 'simplecov', require: false
  # gem 'simplecov-rcov', require: false

  # Notificiations sent to growl through gntp
  gem 'ruby_gntp'
end

gem 'awesome_nested_set'

# Ordering various models

gem 'ranked-model'

# NOTE: slugs from friendly_id should be saved in history with paper_trail
gem 'friendly_id'

gem 'momentjs-rails'

gem 'hashie' # used by content on json data
gem 'hashie-forbidden_attributes' # To fix strong params issue
# Alternative: use virtus models instead of hashie serialized cols
# gem 'virtus'

# For inlining css on emails (gmail + others remove css styles...)
gem 'inky-rb', require: 'inky'
gem 'premailer-rails'

gem 'terminal-table'

# For truncating/word_wrapping tables. (Facets has a lot of ruby extension goodies...)
gem 'facets', require: false

# For validating email addresses
gem 'valid_email2'

# For publish/draft/versining, paper_trail is used
gem 'paper_trail'

# Prettier alerts
# TODO:
# Change to this to include confirm method for rails.confirm ujs
# Change to use https://github.com/alencarandre/sweet-alert2-rails-confirm
gem 'sweet-alert-confirm'

# Better lightboxes
# For galleries, use magnific-popup in combination with slick slider
# For single images, videos, logins etc, use magnific-popup
gem 'magnific-popup-rails'

# Clipboard if needed
gem 'clipboard-rails'

# Caching in memcached through dalli
gem 'dalli'

# Connection pooling for dalli/puma, when running multi threaded:
# See https://github.com/petergoldstein/dalli#multithreading-and-rails
gem 'connection_pool'

# Use Faraday for requests?
gem 'excon'   # for using excon faraday adapter
gem 'faraday' # do http requests over tons of adapters...

gem 'enumerize'

# For prettier pagination in urls
gem 'routing-filter'

# For truncating html
gem 'truncate_html'

gem 'slack-ruby-client'

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'

  gem 'i18n-tasks' # To check for missing/unused translations

  #  gem 'rails-dev-tweaks', '~> 0.5.1'

  # Note, remove binding_of_caller and/or better_errors if debugging is slow
  # See https://github.com/charliesome/better_errors/issues/341
  gem 'better_errors'
  gem 'binding_of_caller'
  # This gem fixes puma issue temporarly
  # gem 'debug-extras'

  gem 'nokogiri' # Needed for data-import.
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # For reloading during devel
  gem 'guard-livereload', require: false
  gem 'guard-rspec', require: false
  # gem 'leifcr-rack-livereload', require: 'rack-livereload'

  gem 'thor'

  # Cannot use guard-bundler on Windows, because of symlink issue.
  # gem 'guard-bundler', require: false
  # Cannot use guard-foreman on Windows, because of symlink issue.
  # gem 'guard-foreman', require: false
  # gem 'foreman', require: false

  # Annotate all the models :)
  gem 'annotate', require: false

  # Allow mailer_preview to have access to params
  # gem 'mailer_preview_request_model'

  # Better ruby/rails console
  gem 'pry-rails'
  gem 'pry-toys'
  gem 'pry-byebug'
end
