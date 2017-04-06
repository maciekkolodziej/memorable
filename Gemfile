source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bcrypt', '~> 3.1.7'                  # Use ActiveModel has_secure_password
gem 'coffee-rails', '~> 4.2'              # Use CoffeeScript for .coffee assets and views
gem 'jquery-rails', '~> 4.3.1'            # Use jquery as the JavaScript library
gem 'pg', '~> 0.18'                       # Use postgresql as the database for Active Record
gem 'puma', '~> 3.0'                      # Use Puma as the app server
gem 'rails', '~> 5.0.2'                   # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'redis', '~> 3.0'                     # Use Redis adapter to run Action Cable in production
gem 'sass-rails', '~> 5.0'                # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'                # Use Uglifier as compressor for JavaScript assets
gem 'turbolinks', '~> 5'                  # Turbolinks makes navigating your web application faster.

group :development, :test do
  gem 'binding_of_caller', '~> 0.7.2'     # Retrieve the binding of a method's caller in MRI 1.9.2+
  gem 'byebug', platform: :mri            # Call 'byebug' anywhere in the code to stop execution
                                          # and get a debugger console
  gem 'pry-inline', '~> 1.0.2'            # Inline variables view like RubyMine in Pry
  gem 'pry-nav', '~> 0.2.4'               # Binding navigation commands for Pry to make a simple debugger
  gem 'pry-rails', '~> 0.3.4'             # Rails >= 3 pry initializer
end

group :development do
  gem 'better_errors', '~> 2.1.1'         # Better error page for Rack apps
  gem 'bullet', '~> 5.4'                  # Help to kill N+1 queries and unused eager loading
  gem 'listen', '~> 3.0.5'
  gem 'spring'                            # Spring speeds up development by keeping your application running
                                          # in the background. Read more: https://github.com/rails/spring
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'           # Access an IRB console on exception pages or by using <%= console %>
                                          # anywhere in the code.
end

gem 'tzinfo-data',
    platforms: [:mingw, :mswin,
                :x64_mingw, :jruby]       # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
