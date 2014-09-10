source 'https://rubygems.org'

ruby '2.1.1'
gem 'rails', '4.1.5'

gem 'pg'
gem 'haml'
gem 'bcrypt-ruby'

# asset gems
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'

# Datatables is disables by default. To enable, uncomment this gem and its related js and css lines in application.js and .css
# gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails'

# Moved out of development-only so that Heroku can use it
gem 'pry-rails'

gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :development, :test do
  gem 'annotate'
  gem 'quiet_assets'
  gem 'binding_of_caller'
  gem 'meta_request'
end

group :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'guard-rspec'
  gem 'faker'
end

group :development do
  #causes problem in conjunction with rspec test
  gem 'better_errors' #do not put this in production or everyone will be able to mess around with variables
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
end

group :production, :development do
    gem 'pry-debugger'
    gem 'pry-stack_explorer'
end
