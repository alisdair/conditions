source 'https://rubygems.org'
ruby '2.0.0'

# gem 'rails', '4.0.0.beta1'
gem 'rails', github: 'rails/rails'

# Postgres!
gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 4.0.0.beta1'
  gem 'coffee-rails', '~> 4.0.0.beta1'
  gem 'therubyracer', platforms: :ruby
  gem 'uglifier', '>= 1.0.3'
end

# Some JavaScript stuff
gem 'jquery-rails'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.0.1'

# Use unicorn as the app server
gem 'unicorn'

# ERB sucks
gem 'haml'
gem 'haml-rails'

# Forms are nice
gem 'simple_form'

group :development, :test do
  # Development server improvements
  gem 'quiet_assets'
  gem 'better_errors'

  # rspec
  gem "rspec", "~> 2.1"
  gem "rspec-rails"
  gem "shoulda-matchers", "1.0.0"
  gem "capybara"
  gem 'factory_girl_rails', '~> 4.0'

  # Autotest
  gem 'autotest-rails'
  gem 'autotest-fsevent'

  # Pry is the best console
  gem "pry-rails"
  gem "pry-debugger"
end
