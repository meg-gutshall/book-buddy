source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.5.3'

group :development, :test do
  ## General ##
  # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
  gem 'rails', '~> 5.2.3'
  # Integrate SassC-Ruby into Rails
  gem 'sassc-rails', '~> 2.1'
  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '~> 4.1'
  # Reduces boot times through caching; required in config/boot.rb
  gem 'bootsnap', '~> 1.4', '>= 1.4.4', require: false
  # Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
  gem 'turbolinks', '~> 5.2'

  ## Security ##
  # Use ActiveModel has_secure_password
  gem 'bcrypt', '~> 3.1.7'
  # Security engine for Rails apps
  gem 'devise', '~> 4.2'
  # Use omniauth for third-party login
  gem 'omniauth', '~> 1.9'

  ## Styling ##
  # Use bootstrap gem for styling
  gem 'bootstrap', '~> 4.3'
  # Supports bootstrap
  gem 'sprockets-rails', '~> 3.2'
  # Supports bootstrap
  gem 'jquery-rails', '~> 4.3'
  # Use font awesome for icons
  gem 'font-awesome-rails', '~> 4.6'

  ## Database ##
  # Use postgresql as the database for Active Record
  gem 'pg', '~> 1.1'
  # Use dotenv to hold your db secrets
  gem 'dotenv-rails', '~> 2.7'
  # Use Puma as the app server
  # Fix puma gem vulnerability
  gem 'puma', '>= 4.3.1'
  
  ## Testing ##
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', '~> 11.0', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 3.25'
  gem 'selenium-webdriver', '~> 3.142'
  # Updates selenium-webdriver automatically
  gem 'webdrivers', '~> 4.1'
  # Use rspec for back-end testing
  gem 'rspec-rails', '~> 3.8'
  # Use to create test objects
  gem 'factory_bot_rails', '~> 5.0'
  # Use to create dummy data for test instances
  gem 'faker', '~> 1.9'
  # Creates a clean slate for testing
  gem 'database_cleaner', '~> 1.7'
  # Use to access sessions in tests
  gem 'rack_session_access', '~> 0.2.0'
  # Provides one-line test code
  gem 'shoulda-matchers', '~> 4.1'


  ## Other ##
  # Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  gem 'tzinfo-data', '~> 1.2019', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
  # Use CoffeeScript for .coffee assets and views
  gem 'coffee-rails', '~> 5.0'
  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
  gem 'jbuilder', '~> 2.9'
  # Cross-platform app compatibility helper
  gem 'launchy', '~> 2.4'
end

group :development do
  ## Performance ##
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '~> 3.7'
  gem 'listen', '~> 3.1'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring', '~> 2.1'
  gem 'spring-watcher-listen', '~> 2.0'
end

# Fix rack gem vulnerability
gem 'rack', '>= 2.0.8'