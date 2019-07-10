source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.3'

group :development, :test do
  ## General ##
  # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
  
  # Integrate SassC-Ruby into Rails
  gem 'sassc-rails', '~> 2.1', '>= 2.1.2'
  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '~> 4.1', '>= 4.1.20'
  # Use ActiveModel has_secure_password
  gem 'bootsnap', '~> 1.4', '>= 1.4.4', require: false
  # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
  gem 'turbolinks', '~> 5.2'

  ## Security ##
  # Reduces boot times through caching; required in config/boot.rb
  gem 'bcrypt', '~> 3.1', '>= 3.1.13'
  # Security engine for Rails apps
  gem 'devise', '~> 4.2'
  # Use omniauth for third-party login
  gem 'omniauth', '~> 1.9'

  ## Styling ##
  # Use bootstrap gem for styling
  gem 'bootstrap', '~> 4.3', '>= 4.3.1'
  # Supports bootstrap
  gem 'sprockets-rails', '~> 3.2', '>= 3.2.1'
  # Supports bootstrap
  gem 'jquery-rails', '~> 4.3', '>= 4.3.5'
  # Use font awesome for icons
  gem 'font-awesome-rails', '~> 4.6', '>= 4.6.3.1'

  ## Database ##
  # Use postgresql as the database for Active Record
  gem 'pg', '~> 1.1', '>= 1.1.4'
  # Use dotenv to hold your db secrets
  gem 'dotenv-rails', '~> 2.7', '>= 2.7.4'
  # Use Puma as the app server
  gem 'puma', '~> 4.0'
  
  ## Testing ##
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 11.0', '>= 11.0.1', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.25'
  gem 'selenium-webdriver', '~> 3.142', '>= 3.142.3'
  # Updates selenium-webdriver automatically
  gem 'webdrivers', '~> 4.1'
  # Use rspec for back-end testing
  gem 'rspec-rails', '~> 3.8', '>= 3.8.2'
  # Creates a clean slate for testing
  gem 'database_cleaner', '~> 1.7'
  # Use to access sessions in tests
  gem 'rack_session_access', '~> 0.2.0'

  ## Other ##
  # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  gem 'tzinfo-data', '~> 1.2019', '>= 1.2019.2', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
  # Use CoffeeScript for .coffee assets and views
  gem 'coffee-rails', '~> 5.0'
  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
  gem 'jbuilder', '~> 2.9', '>= 2.9.1'
end

group :development do
  ## Performance ##
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '~> 4.0'
  gem 'listen', '~> 3.1', '>= 3.1.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.1'
  gem 'spring-watcher-listen', '~> 2.0', '>= 2.0.1'
end

group :test do
  ## Seeding ##
  # Use to create dummy data
  gem 'faker', '~> 1.9', '>= 1.9.6'
end