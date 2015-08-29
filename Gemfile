source 'https://rubygems.org'
ruby '2.2.0'

gem 'rails', '~> 4.2.0'
gem 'responders'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier', '>= 1.0.3'
end

gem 'pg'
gem 'jquery-rails'
gem 'unicorn'
gem 'haml'
gem 'haml-rails'
gem 'simple_form'
gem 'dotenv-rails'

group :development, :test do
  # foreman as an alternative to pow
  gem 'foreman'

  # Development server improvements
  gem 'quiet_assets'
  gem 'better_errors'

  # rspec
  gem 'rspec', '~> 3.0'
  gem 'rspec-rails'
  gem 'rspec-its'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'factory_girl_rails', '~> 4.0'

  # Autotest
  gem 'autotest-rails'
  gem 'autotest-fsevent'

  # Pry is the best console
  gem 'pry-rails'
  #
  # deployment
  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-bundler'
  gem 'capistrano-rbenv'
  gem 'capistrano-rails'
end

group :production do
  # NewRelic is a free way to stop dyno idling
  gem 'newrelic_rpm'
end
