# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt', '~> 3.1.7'                  # Use ActiveModel has_secure_password
gem 'coffee-rails', '~> 4.2'              # Use CoffeeScript for .coffee assets and views
gem 'devise', '~> 4.2.1'                  # Flexible authentication solution for Rails with Warden
gem 'devise-async', '0.7.0'               # Send Devise's emails in background.
gem 'faker', '~> 1.7.3', require: false   # A library for generating fake data.
gem 'haml', '~> 4.0.7'                    # Haml support
gem 'haml-rails', '~> 0.9.0'              # Use haml by default
gem 'jquery-rails', '~> 4.3.1'            # Use jquery as the JavaScript library
gem 'pg', '~> 0.18'                       # Use postgresql as the database for Active Record
gem 'puma', '~> 3.0'                      # Use Puma as the app server
gem 'rails', '~> 5.0.2'                   # Rails
gem 'redis', '~> 3.0'                     # Use Redis adapter to run Action Cable in production
gem 'sass-rails', '~> 5.0'                # Use SCSS for stylesheets
gem 'turbolinks', '~> 5'                  # Turbolinks makes navigating your web application faster.
gem 'uglifier', '>= 1.3.0'                # Use Uglifier as compressor for JavaScript assets

group :development, :test do
  gem 'binding_of_caller', '~> 0.7.2'     # Retrieve the binding of a method's caller in MRI 1.9.2+
  gem 'byebug', platform: :mri            # Call 'byebug' anywhere in the code
  gem 'factory_girl_rails', '~> 4.8.0'    # A fixtures replacement
  gem 'pry-inline', '~> 1.0.2'            # Inline variables view like RubyMine in Pry
  gem 'pry-nav', '~> 0.2.4'               # Binding navigation commands for Pry
  gem 'pry-rails', '~> 0.3.4'             # Rails >= 3 pry initializer
  gem 'rspec-rails', '~> 3.5.2'           # Testing framework for Rails 3.x, 4.x and 5.0.
  gem 'rspec-retry', '~> 0.5.3'           # Retry randomly failing rspec example
end

group :development do
  gem 'better_errors', '~> 2.1.1'         # Better error page for Rack apps
  gem 'bullet', '~> 5.4'                  # Help to kill N+1 queries and unused eager loading
  gem 'listen', '~> 3.0.5'
  gem 'spring'                            # Keeps your application running in the background.
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'           # Use <%= console %> anywhere in the code.
end

group :test do
  gem 'shoulda-matchers', '~> 3.1.1',     # Collection of testing matchers extracted from Shoulda
      require: false
end

# Windows does not include zoneinfo files
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
